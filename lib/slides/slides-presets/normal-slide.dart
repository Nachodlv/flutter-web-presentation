import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NormalSlide extends StatelessWidget {
  final String title;
  final List<String> paragraphs;

  NormalSlide({@required this.title, @required this.paragraphs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff7c143),
        width:  MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ...paragraphs.map((text) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 20,  horizontal: 30),
                      child: Html(
                        data: text,
                        defaultTextStyle: TextStyle(color: Colors.black, fontSize: 30),
                      )))
                ],
              )
            ]),
      ),
    );
  }
}
