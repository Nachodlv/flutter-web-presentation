import 'package:flutter/cupertino.dart';
import 'package:hello_world/slides/slides-presets/normal-text-slide.dart';

class StackedSlide extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return NormalTextSlide(title: "Stacked", paragraphs: [
      '<b>View</b>: Shows the UI to the user. Single widgets also qualifies as views (for consistency in terminology) a view in this case is not a "Page" it\'s just a UI representation.',
      '<b>ViewModel</b>: Manages the state of the View, business logic and any other logic as required from user interaction. It does this by making use of the services',
      '<b>Services</b>: A wrapper of a single functionality / feature set. This is commonly used to wrap things like showing a dialog, wrapping database functionality, integrating an api, etc.'
    ]);
  }
}