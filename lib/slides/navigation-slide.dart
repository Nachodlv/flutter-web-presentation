import 'package:flutter/cupertino.dart';

import 'slides-presets/slide-two-sides.dart';

class NavigationSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTwoSides(
      title: "Navigation",
      paragraphs: [
        "<p>The <b>push()</b>method adds a Route to the stack of routes managed by the Navigator</p>",
        "<p>The <b>pop()</b>method removes the current Route from the stack of routes managed by the Navigator.</p>"
      ],
      code: """
     class FirstScreen extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('First Route'),
          ),
          body: Center(
            child: RaisedButton(
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ),
        );
      }
    }

    class SecondScreen extends StatelessWidget {}
      """,
    );
  }
}
