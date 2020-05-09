import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, world!',
        style: TextStyle(color: Colors.blue, fontSize: 40),
      ),
    );
  }
}
