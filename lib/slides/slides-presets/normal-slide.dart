import 'package:flutter/material.dart';

class NormalSlide extends StatelessWidget {
  final String title;
  final List<Widget> paragraphs;
  final EdgeInsets padding;

  NormalSlide(
      {@required this.title, @required this.paragraphs, EdgeInsets padding})
      : this.padding =
            padding ?? EdgeInsets.symmetric(vertical: 20, horizontal: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff7c143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: paragraphs
                    .map((e) => Padding(padding: padding, child: e))
                    .toList(),
              )
            ]),
      ),
    );
  }
}
