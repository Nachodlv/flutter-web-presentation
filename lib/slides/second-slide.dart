import 'package:flutter/cupertino.dart';

import 'slides-presets/slide-two-sides.dart';

class SecondSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTwoSides(
      title: "Widgets",
      paragraphs: [
        "The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. ",
        "When a widget’s state changes the framework makes the minimal changes needed to transition from one state to the next."
      ],
      code: """
      import 'package:flutter/material.dart';
      
      void main() {
        runApp(
          Center(
            child: Text(
              'Hello, world!',
              textDirection: TextDirection.ltr,
            ),
          ),
        );
      }
      """,
    );
  }
}
