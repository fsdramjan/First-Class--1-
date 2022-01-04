import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final int? maxLine;
  final double? wordSpacing;

  KText(
      {required this.text,
      this.color,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.maxLine,
      this.wordSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 14,
        fontFamily: fontFamily != null ? fontFamily : regular,
        fontWeight: fontWeight,
        color: color != null ? color : black,
        wordSpacing: wordSpacing,
      ),
      textAlign: TextAlign.justify,
      maxLines: maxLine,
    );
  }
}
