import 'package:flutter/material.dart';

class COLOR {
  static const Color primary = Color(0xff0164E5);
  static Color primaryLight = COLOR.primary.withValues(alpha: 0.05);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff191B19);
  static Color darkGrey = const Color(0xff262626).withValues(alpha: 0.80);
  static Color grey1 = COLOR.black.withValues(alpha: 0.60);
  static Color grey2 = COLOR.black.withValues(alpha: 0.40);
  static Color lightGrey1 = COLOR.black.withValues(alpha: 0.50);
  static Color lightGrey2 = COLOR.black.withValues(alpha: 0.35);
  static const Color red = Color(0xffE74141);
}

class GRADIENT {
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xff7695FF),
      Color(0xff224EE4),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
