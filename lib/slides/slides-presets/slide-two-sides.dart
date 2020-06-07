import 'package:flutter/material.dart';
import 'package:hello_world/widgets/dart-code.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SlideTwoSides extends StatelessWidget {
  final String title;
  final List<String> paragraphs;
  final String code;
  final EdgeInsets padding;

  SlideTwoSides(
      {@required this.title,
      @required this.paragraphs,
      @required this.code,
      EdgeInsets padding})
      : this.padding = padding ?? EdgeInsets.all(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            color: Color(0xfff7c143),
            width: MediaQuery.of(context).size.width * 0.45,
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...paragraphs.map((text) => Padding(
                            padding: padding,
                            child: HtmlWidget(
                              text,
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 40),
                            )))
                      ])
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            child: Center(
              child: DartCode(code, 30),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
