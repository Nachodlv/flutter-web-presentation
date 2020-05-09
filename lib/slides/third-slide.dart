import 'package:flutter/cupertino.dart';
import 'package:hello_world/slides/slides-presets/normal-slide.dart';

class ThirdSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NormalSlide(title: "More Widgets!", paragraphs: [
      "Text: lets you create a run of styled text within your application.",
      "Row, Column: create flexible layouts in both the horizontal (Row) and vertical (Column) directions",
      "Stack: lets you place widgets on top of each other in paint order",
      "Container:  lets you create a rectangular visual element. Can be decorated with a BoxDecoration, such as a background, a border, or a shadow"
    ]);
  }

}