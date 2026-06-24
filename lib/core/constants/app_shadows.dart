import 'package:flutter/material.dart';

abstract class AppShadow {
  static const BoxShadow startViewCircleShadowLight = BoxShadow(
    blurRadius: 8,
    offset: Offset(0, 3),
    color: Color(0x29000000),
    spreadRadius: 0,
  );

  static const BoxShadow startViewCircleShadowDark = BoxShadow(
    blurRadius: 8,
    offset: Offset(0, 3),
    color: Color(0x29000000),
    spreadRadius: 0,
  );

  static const BoxShadow onboardHelloShadow = BoxShadow(
    blurRadius: 37,
    offset: Offset(0, 10),
    color: Color(0x29000000),
  );
}
