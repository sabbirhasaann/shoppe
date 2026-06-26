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

  static const BoxShadow navigationBarShadow = BoxShadow(
    blurRadius: 1,
    offset: Offset(0, -1),
    color: Color(0x1A000000),
  );

  static const BoxShadow offset0x0y15br0sr16op = BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 15,
    spreadRadius: 0,
    color: Color(0x29000000),
  );

  static const BoxShadow offset0x5y10br0sr10op = BoxShadow(
    offset: Offset(0, 5),
    blurRadius: 10,
    color: Color(0x1A000000),
  );
}
