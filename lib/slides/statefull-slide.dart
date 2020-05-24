import 'package:flutter/cupertino.dart';

import 'slides-presets/slide-two-sides.dart';

class StatefullSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTwoSides(
      title: "Stateless vs Stateful Widgets",
      paragraphs: [
        "<b>StatelessWidgets</b> receive arguments from their parent widget, which they store in final member variables. When a widget is asked to build(), it uses these stored values to derive new arguments for the widgets it creates.",
        "<b>StatefulWidgets</b> are special widgets that know how to generate State objects, which are then used to hold state. <br>State objects are persistent between calls to build(), Widgets are temporary."
      ],
      code: """
      class Counter extends StatefulWidget {
        @override
        State<Counter> createState() => _CounterState();
      }

      class _CounterState extends State<Counter> {
        int _counter = 0;

        void _increment() {
          setState(() {
            _counter++;
          });
        }

        @override
        Widget build(BuildContext context) {
          return Row(
            children: <Widget>[
              RaisedButton(
                onPressed: _increment,
                child: Text('Increment'),
              ),
              Text('Count: \$_counter'),
            ],
          );
        }
      }
      """,
    );
  }
}
