import 'package:flutter/material.dart';
import 'package:hello_world/slides/slides-presets/slide-two-sides.dart';

class DartIntroductionSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTwoSides(title: 'Dart', 
    padding: EdgeInsets.only(left: 10),
    paragraphs: [
      "Strongly typed",
      "The keyword new for instanciating objects is optional",
      "async / await",
      "Named and optional parameters",
      "Null safe operators",
      "Open source",
      "Can compile to either native code or JavaScript"
    ], 
    code: """
    // Named parameters
    num add({num x, num exponent = 2}) => pow(x, exponent);
    final result = add(num: 3, exponent: 5);
    final result2 = add(num: 3);   

    // Class example
    class Person {
      String firstName;
      String lastName;
      int age;
      String occupation;

      Person(
          {@required this.firstName,
          @required this.lastName,
          this.age,
          this.occupation = 'unknown'});
    }

    // Null safe operators
    print(Person().lastName?.toLowerCase() ?? 'No lastname');
    """);
  }
}