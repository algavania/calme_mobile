import 'dart:ui';

class ColorValues {
  static const background = Color(0xFFFAFAFA);
  static const primary50 = Color(0xFF02BBDD);
  static const primary40 = Color(0xFF35C9E4);
  static const primary30 = Color(0xFF67D6EB);
  static const primary20 = Color(0xFF9AE4F1);
  static const primary10 = Color(0xFFCCF1F8);
  static const white = Color(0xFFFFFFFF);
  static const grey50 = Color(0xFF5F6265);
  static const grey30 = Color(0xFF9FA1A3);
  static const grey20 = Color(0xFFBFC0C1);
  static const grey10 = Color(0xFFDFE0E0);
  static const text50 = Color(0xFF1D1D1D);
  static const text20 = Color(0xFFA5A5A5);
  static const danger90 = Color(0xFF2F0B08);
  static const danger80 = Color(0xFF5E1610);
  static const danger70 = Color(0xFF8C2219);
  static const danger60 = Color(0xFFBB2D21);
  static const danger50 = Color(0xFFEA3829);
  static const danger40 = Color(0xFFEE6054);
  static const danger30 = Color(0xFFF2887F);
  static const danger20 = Color(0xFFF7AFA9);
  static const danger10 = Color(0xFFFBD7D4);
  static const success90 = Color(0xFF022217);
  static const success80 = Color(0xFF04452E);
  static const success70 = Color(0xFF076746);
  static const success60 = Color(0xFF098A5D);
  static const success50 = Color(0xFF0BAC74);
  static const success40 = Color(0xFF3CBD90);
  static const success30 = Color(0xFF6CCDAB);
  static const success20 = Color(0xFF9DDEC7);
  static const success10 = Color(0xFFCEEEE3);
  static const secondary50 = Color(0xFFFFB703);
  static const secondary20 = Color(0xFFFFB703);
  static const secondary10 = Color(0xFFFFF1CD);
  static const pink50 = Color(0xFFF8627F);

  static Color lighten(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final p = percent / 100;
    return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round(),
    );
  }

  static Color darken(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final f = 1 - percent / 100;
    return Color.fromARGB(
      c.alpha,
      (c.red * f).round(),
      (c.green * f).round(),
      (c.blue * f).round(),
    );
  }
}
