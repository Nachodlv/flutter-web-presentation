import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hello_world/widgets/dart-code.dart';

class SlideTwoSides extends StatelessWidget {
  final String title;
  final List<String> paragraphs;
  final String code;

  SlideTwoSides({@required this.title, @required this.paragraphs, @required this.code});

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
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...paragraphs.map((text) => Padding(
                            padding: EdgeInsets.all(20),
                            child: Html(
                              data: text,
                              defaultTextStyle:
                                  TextStyle(color: Colors.black, fontSize: 30),
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
