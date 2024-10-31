import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/features/coping/bloc/coping_bloc.dart';
import 'package:calme_mobile/features/coping/data/coping_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class CopingPage extends StatefulWidget {
  const CopingPage({super.key});

  @override
  State<CopingPage> createState() => _CopingPageState();
}

class _CopingPageState extends State<CopingPage> {
  final ValueNotifier<int> _slideCount = ValueNotifier(1);
  final _bloc = CopingBloc(repository: Injector.instance<CopingRepository>());

  @override
  void initState() {
    _bloc.add(const CopingEvent.getAllCopings());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).copingSkillsToolbox,
          style: const TextStyle(color: ColorValues.white),
        ),
        backgroundColor: ColorValues.primary50,
        iconTheme: const IconThemeData(color: ColorValues.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Styles.extraLargePadding,
            horizontal: Styles.defaultPadding),
        child: BlocBuilder<CopingBloc, CopingState>(
          bloc: _bloc,
          builder: (context, state) {
            final dummyList = List.generate(5, (index) => generateMockCopingModel());
            return state.maybeMap(
              loaded: (s) => _buildSwipeCards(s.list, false),
              orElse: () => _buildSwipeCards(dummyList, true),
            );
          },
        ),
      ),
      backgroundColor: ColorValues.primary50,
    );
  }

  Widget _buildSwipeCards(List<CopingModel> list, bool isLoading) {
    return Skeletonizer(
      enabled: isLoading,
      child: Column(
        children: [
          SizedBox(
            height: 56.h,
            child: CardSwiper(
              onSwipe: (int _, int? __, CardSwiperDirection ___) {
                _slideCount.value < list.length
                    ? _slideCount.value++
                    : _slideCount.value = 1;
                return true;
              },
              cardsCount: list.length,
              cardBuilder: (context, index, _, __) {
                return _buildCopingCard(list[index]);
              },
            ),
          ),
          const SizedBox(height: Styles.biggerSpacing),
          ValueListenableBuilder(
              valueListenable: _slideCount,
              builder: (context, _, __) {
                return Text(
                  '${AppLocalizations.of(context).slide} ${_slideCount.value}/${list.length}',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: ColorValues.white),
                );
              })
        ],
      ),
    );
  }

  Widget _buildCopingCard(CopingModel copingModel) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorValues.primary40,
        borderRadius: BorderRadius.circular(Styles.biggerBorder),
        boxShadow: [
          BoxShadow(
            color: ColorValues.white.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Styles.biggerBorder),
            child: Image.asset(
              'assets/coping/background.png',
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Styles.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: copingModel.thumbnailUrl,
                  width: 180,
                  height: 180,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: Styles.bigSpacing),
                Text(
                  copingModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorValues.white),
                ),
                const SizedBox(height: Styles.mediumSpacing),
                Text(
                  copingModel.description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: ColorValues.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
