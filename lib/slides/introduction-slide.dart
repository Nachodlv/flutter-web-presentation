import 'package:flutter/material.dart';
import 'package:hello_world/slides/slides-presets/normal-slide.dart';

class IntroductionSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NormalSlide(title: "What is Flutter?", paragraphs: [
      _getText(
          "Flutter is Google’s UI toolkit for building compiled applications for mobile, web, and desktop from a single codebase."),
      _getText(
          "Paint your application to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build interfaces in minutes."),
      Container(height: MediaQuery.of(context).size.width * 0.1,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/images/flutter-logo.png'),
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          Image(
            image: AssetImage('assets/images/dart-logo.png'),
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ],
      )
    ]);
  }

  Text _getText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: 30),
    );
  }
}
