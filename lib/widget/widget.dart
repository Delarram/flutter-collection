import 'package:flutter/material.dart';


class CustomTextView extends StatelessWidget {
  const CustomTextView({Key? key, required this.text,  this.fontSize,  this.fontWeight,  this.fontColor=Colors.black, this.maxLine, this.overflow, this.isUnderLine=false,  this.textAlign, this.lineHeight, this.fontFamily = "poppin"}) : super(key: key);

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final int? maxLine;
  final TextOverflow? overflow;
  final bool? isUnderLine;
  final TextAlign? textAlign;
  final double? lineHeight;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontSize??14,
        fontWeight: fontWeight,
        color: fontColor,
        height: lineHeight,
        fontFamily:fontFamily,
        decoration: isUnderLine==true?TextDecoration.underline:TextDecoration.none,
      ),
    );
  }
}
