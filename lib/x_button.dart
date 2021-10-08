import 'dart:io';

import 'package:flutter/material.dart';
import 'package:x_button/x_button_style.dart';

class XButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;

  const XButton({required this.child, this.onPressed, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: XButtonStyle.getDefaultButtonStyle(),
    );
  }

  XButton.icon({required Icon icon, this.onPressed, this.onLongPressed})
      : child = icon;

  XButton.text(
      {required String text,
      double fontSize = 16,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.normal,
      TextAlign textAlign = TextAlign.center,
      String? fontFamily,
      TextStyle? textStyle,
      this.onPressed,
      this.onLongPressed})
      : child = Text(text,
            style: textStyle ??
                TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color,
                    fontFamily: fontFamily),
            textAlign: textAlign);

  XButton.image(
      {required String assets,
      double width = 24,
      double height = 24,
      double? size,
      BoxFit fit = BoxFit.cover,
      this.onPressed,
      this.onLongPressed})
      : child =
            Image.asset(assets, width: size ?? width, height: size ?? height);

  XButton.file(
      {required String path,
      double width = 24,
      double height = 24,
      double? size,
      BoxFit fit = BoxFit.cover,
      this.onPressed,
      this.onLongPressed})
      : child = Image.file(File(path),
            width: size ?? width, height: size ?? height);
}