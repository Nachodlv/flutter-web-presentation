import 'package:flutter/cupertino.dart';
import 'package:hello_world/slides/slides-presets/normal-text-slide.dart';

class MoreWidgetsSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NormalTextSlide(title: "More Widgets!", paragraphs: [
      "<b>Text:</b> lets you create a run of styled text within your application",
      "<b>Row, Column:</b> create flexible layouts in both the horizontal (Row) and vertical (Column) directions",
      "<b>Stack:</b> lets you place widgets on top of each other in paint order",
      "<b>Container:</b>  lets you create a rectangular visual element. Can be decorated with a BoxDecoration, such as a background, a border, or a shadow"
    ]);
  }
}
