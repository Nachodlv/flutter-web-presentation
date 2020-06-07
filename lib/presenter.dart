import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Presenter extends StatelessWidget {
  
  final List<Widget> children;
  final PageController _pageController = PageController();
  final FocusNode _focusNode = FocusNode();

  Presenter(this.children);

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(_focusNode);
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: (keyEvent) {
        if(keyEvent.runtimeType.toString() != 'RawKeyDownEvent') return;
        if(keyEvent.data.physicalKey.debugName == "Arrow Right") 
          _pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
        else if(keyEvent.data.physicalKey.debugName == "Arrow Left") 
          _pageController.previousPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      },
      child: PageView(
        controller: _pageController,
        children: children,
      ));
  
  }
  
}
