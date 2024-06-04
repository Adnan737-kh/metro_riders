import 'package:flutter/material.dart';
import 'package:metro_riders/styles.dart';

import 'base_button.dart';


class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    Key? key,
    this.decoration,
    required this.rightIcon,
    required this.leftIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    Alignment? alignment,
    ButtonStyle? buttonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisable,
    double? height,
    double? width,
    required String text,
  }):super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonStyle,
    isDisable: isDisable,
    buttonTextStyle: buttonTextStyle,
    height:height,
    width:width,
    alignment:alignment ,
    margin:margin,
  );

  final Decoration? decoration;
  final Widget rightIcon;
  final Widget leftIcon;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildElevatedButtonWidget,
    ): buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
    height: this.height ?? 24.0,
    width: this.width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle,
      onPressed: isDisable ?? false ? null : onPressed ?? (){},
      child: Row(
        children: [
          leftIcon ?? const SizedBox.shrink(),
          Text(text!,
            style: buttonTextStyle ?? Styles.textStyleBold,
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
