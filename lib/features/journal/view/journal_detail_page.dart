import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/journal/bloc/journal_bloc.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class JournalDetailPage extends StatefulWidget {
  const JournalDetailPage({
    required this.journalModel,
    required this.questions,
    required this.answers,
    super.key,
  });

  final JournalModel journalModel;
  final List<QuestionModel> questions;
  final List<JournalAnswerModel> answers;

  @override
  State<JournalDetailPage> createState() => _JournalDetailPageState();
}

class _JournalDetailPageState extends State<JournalDetailPage> {
  final _bloc = JournalBloc(repository: Injector.instance<JournalRepository>());
  int _index = 0;
  final _controllers = <TextEditingController>[];
  final _nodes = <FocusNode>[];

  @override
  void initState() {
    _controllers.addAll(
      List.generate(widget.questions.length, (index) {
        var answer = '';
        final id = widget.answers.indexWhere(
          (element) => element.questionId == widget.questions[index].id!,
        );
        if (id != -1) {
          answer = widget.answers[id].answer;
        }
        return TextEditingController(text: answer);
      }),
    );
    _nodes.addAll(List.generate(widget.questions.length, (_) => FocusNode()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JournalBloc, JournalState>(
      bloc: _bloc,
      listener: (context, state) {
        state.maybeMap(
          loading: (_) {
            context.loaderOverlay.show();
          },
          error: (s) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: s.error, isSuccess: false);
          },
          success: (_) {
            context.loaderOverlay.hide();
            AutoRouter.of(context).popUntilRoot();
          },
          orElse: () {
            context.loaderOverlay.hide();
          },
        );
      },
      child: PopScope(
        canPop: _index == 0,
        onPopInvokedWithResult: (_, __) {
          if (_index > 0) {
            setState(() {
              _index--;
            });
          }
        },
        child: Scaffold(
          backgroundColor: ColorValues.white,
          appBar: _buildAppBar(),
          bottomNavigationBar: _buildBottomButton(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopWidget(),
              const SizedBox(
                height: Styles.defaultSpacing,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _nodes[_index].requestFocus();
                  },
                  child: ColoredBox(
                    color: Colors.white,
                    child: SingleChildScrollView(child: _buildAnswerWidget()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerWidget() {
    return CustomTextField(
      autofocus: true,
      controller: _controllers[_index],
      focusNode: _nodes[_index],
      isRounded: false,
      maxLines: null,
      minLines: null,
    );
  }

  Widget _buildTopWidget() {
    return Container(
      color: ColorValues.background,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai, Diriku!',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: ColorValues.primary50),
                ),
                const SizedBox(
                  height: Styles.defaultSpacing,
                ),
                Text(
                  widget.questions[_index].question,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Contoh: ${widget.questions[_index].example}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: ColorValues.grey50),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: Styles.defaultSpacing,
          ),
          CachedNetworkImage(
            imageUrl: widget.journalModel.thumbnailUrl,
            width: 20.w,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton() {
    return Container(
      color: ColorValues.background,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonText: 'Kembali',
              onPressed: () {
                if (_index == 0) {
                  AutoRouter.of(context).maybePop();
                } else {
                  setState(() {
                    _index--;
                  });
                }
              },
              isWhiteButton: true,
            ),
          ),
          const SizedBox(
            width: Styles.defaultSpacing,
          ),
          Expanded(
            child: CustomButton(
              buttonText: _index == widget.questions.length - 1
                  ? 'Simpan'
                  : context.l10n.next,
              onPressed: () {
                if (_index < widget.questions.length - 1) {
                  setState(() {
                    _index++;
                  });
                } else {
                  final list = <JournalAnswerModel>[];
                  var i = 0;
                  for (final data in _controllers) {
                    list.add(
                      JournalAnswerModel(
                        answer: data.text.trimLeft().trimRight(),
                        userId: DbHelper.auth.currentUser!.uid,
                        journalId: widget.journalModel.id!,
                        questionId: widget.questions[i].id!,
                        createdAt: DateTime.now(),
                      ),
                    );
                    i++;
                  }
                  _bloc.add(
                    JournalEvent.saveAnswers(widget.journalModel.id!, list),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      title: widget.journalModel.title,
      actions: [
        Chip(
          label: Text(
            '${_index + 1}/${widget.questions.length}',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: ColorValues.white),
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: ColorValues.secondary50,
        ),
      ],
    );
  }
}
