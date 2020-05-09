import 'package:flutter/material.dart';
import 'package:hello_world/slides/third-slide.dart';
import 'counter.dart';
import 'form-validation.dart';
import 'navigation/navigation-routes.dart';
import 'navigation/navigation.dart';
import 'presenter.dart';
import 'slides/second-slide.dart';
import 'slides/slides-presets/title-slide.dart';
import 'widgets-examples/basic-widgets.dart';
import 'widgets-examples/hello-world.dart';

void main() {
  runApp(MaterialApp(
    title: "DPOI presentation",
    theme: ThemeData(fontFamily: "Calibri"),
    home: Material(
        child: Presenter([
      TitleSlide(),
      SecondSlide(),
      HelloWorld(),
      ThirdSlide(),
      MyScaffold(),
      Counter(),
      Navigation(),
      NavigationRoutes(),
      FormValidation()
    ])),
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/navigation/first': (context) => FirstScreenRoute(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/navigation/second': (context) => SecondScreenRoute(),
    },
  ));
}

