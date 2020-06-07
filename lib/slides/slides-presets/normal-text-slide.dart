import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hello_world/slides/slides-presets/normal-slide.dart';

class NormalTextSlide extends StatelessWidget {
  List<String> paragraphs;
  String title;

  NormalTextSlide({@required this.title, @required this.paragraphs});

  @override
  Widget build(BuildContext context) {
    return NormalSlide(
        title: title,
        paragraphs: paragraphs
            .map((text) => HtmlWidget(
                  text,
                  textStyle: TextStyle(color: Colors.black, fontSize: 40),
                ))
            .toList());
  }
}
