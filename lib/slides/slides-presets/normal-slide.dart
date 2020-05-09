import 'package:flutter/material.dart';
import 'package:hello_world/widgets/dart-code.dart';

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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                      child: Text(
                        text,
                        style: TextStyle(color: Colors.black, fontSize: 30),
                        textAlign: TextAlign.left,
                      )))
                ],
              )
            ]),
      ),
    );
  }
}
