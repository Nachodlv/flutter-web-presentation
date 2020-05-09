import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/theme_map.dart';

class DartCode extends StatelessWidget {
  final String code;
  final double fontSize;

  DartCode(this.code, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return HighlightView(
      code,

      // Specify language
      // It is recommended to give it a value for performance
      language: 'dart',
      theme: themeMap['atom-one-light'],
      // Specify padding
      padding: EdgeInsets.all(12),

      // Specify text style
      textStyle: TextStyle(
        fontFamily: 'Calibri',
        fontSize: fontSize,
      ),
    );
  }
}
