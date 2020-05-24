import 'package:flutter/material.dart';
import 'package:hello_world/slides/form-validation-slide.dart';
import 'package:hello_world/slides/introduction-slide.dart';
import 'package:hello_world/slides/navigation-slide.dart';
import 'package:hello_world/slides/statefull-slide.dart';
import 'package:hello_world/slides/web-support-slide.dart';
import 'examples/basic-widgets.dart';
import 'examples/counter.dart';
import 'examples/form-validation.dart';
import 'examples/hello-world.dart';
import 'navigation/navigation-routes.dart';
import 'navigation/navigation.dart';
import 'presenter.dart';
import 'slides/more-widgets-slide.dart';
import 'slides/slides-presets/title-slide.dart';
import 'slides/widgets-slide.dart';

void main() {
  runApp(MaterialApp(
    title: "DPOI presentation",
    theme: ThemeData(fontFamily: "Calibri",textTheme: TextTheme(bodyText2: TextStyle(fontSize: 25), button: TextStyle(fontSize: 25))),
    home: Material(child: Presenter(_getSlides())),
    initialRoute: '/',
    routes: {
      '/navigation/first': (context) => FirstScreenRoute(),
      '/navigation/second': (context) => SecondScreenRoute(),
    },
  ));
}

List<Widget> _getSlides() {
  return [
    TitleSlide(),
    IntroductionSlide(),
    WebSupportSlide(),
    WidgetsSlide(),
    HelloWorld(),
    MoreWidgetsSlide(),
    MyScaffold(),
    StatefullSlide(),
    CounterContainer(),
    NavigationSlide(),
    Navigation(),
    NavigationRoutes(),
    FormValidationSlide(),
    FormValidation()
  ];
}
