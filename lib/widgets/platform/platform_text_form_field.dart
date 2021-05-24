import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/abstracts/platform_widgets.dart';

class PlatformTextFormField
    extends PlatformWidget<CupertinoTextFormFieldRow, TextFormField> {
  final Key? key;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final InputDecoration? decoration;
  final BoxDecoration? iosDecoration;
  final bool obscureText;
  final int? maxLength;
  final String? hintText;
  final TextStyle? textStyle;
  final Icon? prefix;
  final Icon? suffix;

  PlatformTextFormField(
      {this.key,
      required this.controller,
      this.validator,
      this.decoration,
      this.iosDecoration,
      this.obscureText = false,
      this.maxLength,
      this.textStyle,
      this.hintText,
      this.suffix,
      this.prefix});

  @override
  TextFormField createAndroidWidget(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: decoration,
      obscureText: obscureText,
      autocorrect: false,
      maxLength: maxLength,
      style: textStyle,
    );
  }

  @override
  CupertinoTextFormFieldRow createIosWidget(BuildContext context) {
    return CupertinoTextFormFieldRow(
      controller: controller,
      validator: validator,
      decoration: iosDecoration,
      obscureText: obscureText,
      autocorrect: false,
      maxLength: maxLength,
      placeholder: hintText,
      style: textStyle,
    );
  }
}
