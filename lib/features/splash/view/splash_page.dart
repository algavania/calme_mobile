import 'package:auto_route/annotations.dart';
import 'package:calme_mobile/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.w),
          child: const Center(
            child: LogoWidget(),
          ),
        ),
      ),
    );
  }
}
