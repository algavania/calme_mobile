import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/database/shared_preferences_service.dart';
import 'package:calme_mobile/features/landing/widgets/slider.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:calme_mobile/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [];

  void _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  bool _isLast() {
    return _currentPage == _pages.length - 1;
  }

  void _initPages() {
    if (_pages.isNotEmpty) return;
    _pages.addAll([
      SliderPage(
        title: AppLocalizations.of(context).landingTitle1,
        description: AppLocalizations.of(context).landingDescription1,
        image: 'assets/landing/landing1.png',
      ),
      SliderPage(
        title: AppLocalizations.of(context).landingTitle2,
        description: AppLocalizations.of(context).landingDescription2,
        image: 'assets/landing/landing2.png',
      ),
      SliderPage(
        title: AppLocalizations.of(context).landingTitle3,
        description: AppLocalizations.of(context).landingDescription3,
        image: 'assets/landing/landing3.png',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    _initPages();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(Styles.defaultPadding),
          child: Column(
            children: [
              SizedBox(height: 5.h),
              const LogoWidget(),
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      onPageChanged: _onChanged,
                      controller: _controller,
                      itemCount: _pages.length,
                      itemBuilder: (context, int index) {
                        return _pages[index];
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              List<Widget>.generate(_pages.length, (int index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: 8,
                              width: 32,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 30,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (index == _currentPage)
                                    ? Theme.of(context).primaryColor
                                    : ColorValues.grey10,
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 1.5.h),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                buttonText: _isLast()
                                    ? AppLocalizations.of(context).register
                                    : AppLocalizations.of(context).skip,
                                onPressed: () {
                                  SharedPreferencesService.setIsFirstTime(
                                    value: false,
                                  );
                                  if (_isLast()) {
                                    AutoRouter.of(context)
                                        .replace(const RegisterRoute());
                                  } else {
                                    AutoRouter.of(context)
                                        .replace(const LoginRoute());
                                  }
                                },
                                isWhiteButton: true,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: CustomButton(
                                buttonText: _isLast()
                                    ? AppLocalizations.of(context).login
                                    : AppLocalizations.of(context).next,
                                onPressed: () {
                                  if (_isLast()) {
                                    SharedPreferencesService.setIsFirstTime(
                                      value: false,
                                    );
                                    AutoRouter.of(context)
                                        .replace(const LoginRoute());
                                  } else {
                                    _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
