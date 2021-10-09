import 'dart:ui';

import 'package:flutter/material.dart';

class XButtonStyle {
  static ButtonStyle getDefaultElevatedButtonStyle() {
    return ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(180, 48)),
        elevation: MaterialStateProperty.all(2),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        splashFactory: InkSplash.splashFactory);
  }

  static ButtonStyle getDefaultOutlinedButtonStyle() {
    return ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(180, 48)),
        elevation: MaterialStateProperty.all(2),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        side: MaterialStateProperty.all(
            BorderSide(width: 1, color: Colors.blue, style: BorderStyle.solid)),
        overlayColor: MaterialStateProperty.all(Colors.black12),
        splashFactory: InkSplash.splashFactory);
  }

  static ButtonStyle getDefaultTextButtonStyle() {
    return ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(180, 48)),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        overlayColor: MaterialStateProperty.all(Colors.black12),
        splashFactory: InkSplash.splashFactory);
  }

  static ButtonStyle getElevatedButtonStyle(BuildContext context) {
    return Theme.of(context).elevatedButtonTheme.style ??
        getDefaultElevatedButtonStyle();
  }

  static ButtonStyle getOutlinedButtonStyle(BuildContext context) {
    return Theme.of(context).outlinedButtonTheme.style ??
        getDefaultOutlinedButtonStyle();
  }

  static ButtonStyle getTextButtonStyle(BuildContext context) {
    return Theme.of(context).textButtonTheme.style ??
        getDefaultTextButtonStyle();
  }
}
