import 'dart:ui';

import 'package:flutter/material.dart';

class XButtonStyle {
  static ButtonStyle getDefaultButtonStyle() {
    return ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(200, 100)),
        elevation: MaterialStateProperty.all(2),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        side: MaterialStateProperty.all(
            BorderSide(width: 2, color: Colors.blue, style: BorderStyle.solid)),
        overlayColor: MaterialStateProperty.all(Colors.blue.withAlpha(100)),
        splashFactory: InkSplash.splashFactory);
  }
}
