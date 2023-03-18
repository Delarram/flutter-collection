import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercollection/widget/widget.dart';
import '../resources/color_constant.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final Function? onChange;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;
  final List<TextInputFormatter>? inputFormatter;
  final Function? onTapSuffix;
  final Color? suffixIconColor;
  final bool obscureText;
  final Color? fillColor;
  final double? borderRadius;
  final bool? isSearch;
  final String? prefixText;
  final String? initialText;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.onChange,
    this.controller,
    this.keyBoardType,
    this.inputFormatter,
    this.onTapSuffix,
    this.suffixIconColor,
    this.obscureText = false,
    this.fillColor = cBackGroundSix,
    this.borderRadius = 10, this.isSearch=false, this.prefixText, this.initialText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      initialValue: initialText,
      inputFormatters: inputFormatter,
      onChanged: (value) => onChange!(value),
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: fillColor,
        border: InputBorder.none,
        filled: true,
        hintStyle: const TextStyle(color: cBackGroundFour),
        hintText: hintText,
        suffixIcon: suffixIcon == null
            ? null
            : GestureDetector(
          onTap: () {
            onTapSuffix!();
          },
          child: Icon(
            suffixIcon,
            size: 25,
            color: suffixIconColor,
          ),
        ),
        prefixIcon: prefixText == null ? null : Padding(
          padding: const EdgeInsets.only(left: 12,top: 12),
          child: CustomTextView(text: prefixText!),
        ) ,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width:  0.5, color: isSearch==true?fillColor!:cBackGroundSix),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:isSearch==true?fillColor!: cBackGroundSix, width:  0.5),
            borderRadius: BorderRadius.circular(borderRadius!)
        ),
      ),
    );
  }
}
