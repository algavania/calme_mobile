import 'package:calme_mobile/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/core/logo.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 5),
        Text(
          context.l10n.calme,
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
