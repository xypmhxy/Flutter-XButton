import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_button/xbutton_style.dart';

enum XButtonType { elevated, outlined, noBackground }
enum XButtonShape { rect, roundRect, circle }

class XButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final XButtonType? buttonType;
  final XButtonShape? buttonShape;
  final BorderRadiusGeometry? borderRadius;
  final Color? overlayColor;

  const XButton(
      {required this.child,
      this.onPressed,
      this.onLongPressed,
      this.buttonType,
      this.buttonShape,
      this.borderRadius,
      this.overlayColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: _getButtonStyleFromStyle(context),
    );
  }

  ButtonStyle _getButtonStyleFromStyle(BuildContext context) {
    var buttonStyle = XButtonStyle.getElevatedButtonStyle(context);
    if (buttonType == XButtonType.elevated) {
      buttonStyle = XButtonStyle.getElevatedButtonStyle(context);
    } else if (buttonType == XButtonType.outlined) {
      buttonStyle = XButtonStyle.getOutlinedButtonStyle(context);
    } else if (buttonType == XButtonType.noBackground) {
      buttonStyle = XButtonStyle.getTextButtonStyle(context);
    }
    buttonStyle = buttonStyle.copyWith(
        shape: _getButtonShape(buttonStyle),
        overlayColor: overlayColor != null
            ? MaterialStateProperty.all(overlayColor)
            : buttonStyle.overlayColor,
        minimumSize: buttonShape == XButtonShape.circle ? null : null);
    return buttonStyle;
  }

  MaterialStateProperty<OutlinedBorder?>? _getButtonShape(
      ButtonStyle currentStyle) {
    if (buttonShape == XButtonShape.rect) {
      return MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.zero));
    } else if (buttonShape == XButtonShape.circle) {
      return MaterialStateProperty.all(CircleBorder());
    } else if (buttonShape == XButtonShape.roundRect) {
      var tempBorderRadius = borderRadius;
      if (tempBorderRadius == null) {
        if (currentStyle.shape is RoundedRectangleBorder) {
          RoundedRectangleBorder roundedRectangleBorder =
              currentStyle.shape as RoundedRectangleBorder;
          tempBorderRadius = roundedRectangleBorder.borderRadius;
          return MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: tempBorderRadius));
        }
      } else {
        return MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: tempBorderRadius));
      }
    }

    if (borderRadius != null) {
      Set<MaterialState> materialState = Set()..add(MaterialState.focused);
      if (currentStyle.shape?.resolve(materialState)
          is RoundedRectangleBorder) {
        return MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius!));
      }
    }

    return currentStyle.shape;
  }

  XButton.icon(
      {required Icon icon,
      this.onPressed,
      this.onLongPressed,
      this.buttonType,
      this.buttonShape,
      this.borderRadius,
      this.overlayColor})
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
      this.onLongPressed,
      this.buttonType,
      this.buttonShape,
      this.borderRadius,
      this.overlayColor})
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
      this.onLongPressed,
      this.buttonType,
      this.buttonShape,
      this.borderRadius,
      this.overlayColor})
      : child =
            Image.asset(assets, width: size ?? width, height: size ?? height);

  XButton.file(
      {required String path,
      double width = 24,
      double height = 24,
      double? size,
      BoxFit fit = BoxFit.cover,
      this.onPressed,
      this.onLongPressed,
      this.buttonType,
      this.buttonShape,
      this.borderRadius,
      this.overlayColor})
      : child = Image.file(File(path),
            width: size ?? width, height: size ?? height);
}
