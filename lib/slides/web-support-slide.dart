import 'package:flutter/material.dart';
import 'package:hello_world/slides/slides-presets/normal-slide.dart';

class WebSupportSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NormalSlide(title: "Web Support", paragraphs: [
      Text(
          "Compile existing Flutter code written in Dart into a client experience that can be embedded in the browser and deployed to any web server",
          style: TextStyle(color: Colors.black, fontSize: 40)),
      Text(
          "Flutter Web is currently on beta and it is not recommended to use in production",
          style: TextStyle(color: Colors.black, fontSize: 40)),
      Center(
        child: Image(image: AssetImage('assets/images/web-support.png')),
      )
    ]);
  }
}
