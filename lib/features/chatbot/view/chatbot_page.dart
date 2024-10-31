import 'package:auto_route/annotations.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:calme_mobile/widgets/back_button.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:calme_mobile/widgets/rounded_button.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _chatController = TextEditingController();
  final List<MessageModel> _list = [];
  final _prompt =
      'Jawab selayaknya kamu adalah seorang psikolog profesional. '
      'Di sini kita sedang chat dengan satu sama lain.';
  final _requestText = <Messages>[];
  late OpenAI _openAI;

  @override
  void initState() {
    _openAI = OpenAI.instance.build(
      token: DbHelper.token,
      baseOption: HttpSetup(receiveTimeout: const Duration(minutes: 5)),
      enableLog: true,
    );
    _requestText.add(Messages(role: Role.system, content: _prompt));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              _buildAppBar(),
              const SizedBox(height: Styles.defaultSpacing),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerRight,
                      fit: BoxFit.cover,
                      image: svg_provider.Svg(
                        'assets/home/chat_bg.svg',
                        size: Size(100.w, 100.h),
                      ),
                    ),
                    color: Colors.white,
                    border: const Border(
                      top: BorderSide(color: ColorValues.grey10),
                      bottom: BorderSide(color: ColorValues.grey10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildBody(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Styles.defaultSpacing),
              MessageChatBoxWidget(
                controller: _chatController,
                onSend: () async {
                  context.loaderOverlay.show();
                  try {
                    final content = _chatController.text.trimLeft().trimRight();
                    _requestText
                        .add(Messages(role: Role.user, content: content));
                    final request = ChatCompleteText(
                      messages: _requestText.map((e) => e.toJson()).toList(),
                      maxToken: 500,
                      model: GptTurbo16k0631Model(),
                    );
                    final response =
                        await _openAI.onChatCompletion(request: request);
                    var text = '';
                    for (final element in response?.choices ?? []) {
                      text += element.message?.content.toString() ?? '';
                      logger.d('data -> ${element.message?.content}');
                    }

                    setState(() {
                      _list
                        ..add(MessageModel(message: content))
                        ..add(MessageModel(message: text, isSender: false));
                      _chatController.clear();
                    });
                  } catch (e) {
                    context.showSnackBar(
                      message: e.toString(),
                      isSuccess: false,
                    );
                  }
                  context.loaderOverlay.hide();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return ListView.separated(
      separatorBuilder: (_, __) =>
          const SizedBox(height: Styles.defaultSpacing),
      itemCount: _list.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final chat = _list[index];
        return Container(
          padding:
              const EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
          child: Align(
            alignment:
                (!chat.isSender ? Alignment.topLeft : Alignment.topRight),
            child: Container(
              decoration: BoxDecoration(
                border: chat.isSender
                    ? null
                    : Border.all(color: ColorValues.grey10),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    !chat.isSender ? Styles.smallBorder : Styles.defaultBorder,
                  ),
                  topRight: Radius.circular(
                    chat.isSender ? Styles.smallBorder : Styles.defaultBorder,
                  ),
                  bottomRight: const Radius.circular(Styles.defaultBorder),
                  bottomLeft: const Radius.circular(Styles.defaultBorder),
                ),
                color: (!chat.isSender
                    ? ColorValues.background
                    : Theme.of(context).primaryColor),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: Styles.contentPadding,
                horizontal: Styles.defaultPadding,
              ),
              margin: EdgeInsets.only(
                left: !chat.isSender ? 0 : 10.w,
                right: chat.isSender ? 0 : 10.w,
              ),
              child: Text(
                chat.message,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: chat.isSender ? Colors.white : Colors.black,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppBar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Row(
        children: [
          const CustomBackButton(),
          const SizedBox(width: Styles.defaultPadding),
          Expanded(
            child: Row(
              children: [
                RoundedButton(
                  withOnlineIndicator: true,
                  color: ColorValues.secondary10,
                  border: Border.all(color: ColorValues.secondary20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SvgPicture.asset('assets/home/chatbot.svg'),
                  ),
                ),
                const SizedBox(width: Styles.defaultSpacing),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).calmebot,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      AppLocalizations.of(context).online,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: ColorValues.grey50),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: Styles.defaultPadding),
          const RoundedButton(
            color: Colors.transparent,
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class MessageChatBoxWidget extends StatefulWidget {
  const MessageChatBoxWidget({
    required this.controller,
    super.key,
    this.onSend,
  });

  final TextEditingController controller;
  final void Function()? onSend;

  @override
  State<MessageChatBoxWidget> createState() => _MessageChatBoxWidgetState();
}

class _MessageChatBoxWidgetState extends State<MessageChatBoxWidget> {
  bool _isSend = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: ColorValues.grey10)),
      ),
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              controller: widget.controller,
              maxLines: null,
              isDense: true,
              onChanged: (s) {
                setState(() {
                  _isSend = s?.trim().isNotEmpty ?? false;
                });
              },
              hint: AppLocalizations.of(context).typeSomething,
            ),
          ),
          const SizedBox(width: Styles.defaultSpacing),
          RoundedButton(
            onTap: !_isSend ? null : widget.onSend,
            color:
                _isSend ? Theme.of(context).primaryColor : ColorValues.grey10,
            child: Icon(
              _isSend ? UniconsLine.location_arrow_alt : UniconsLine.navigator,
              color: _isSend ? Colors.white : ColorValues.grey30,
            ),
          ),
        ],
      ),
    );
  }
}

class MessageModel {
  final String message;
  final bool isSender;

  MessageModel({required this.message, this.isSender = true});
}
