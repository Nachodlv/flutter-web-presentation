import 'package:flutter/material.dart';

class TitleSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff7c143),
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 30,
                top: 30,
                child: Text("DPOI",
                    style: TextStyle(color: Colors.black, fontSize: 30))),
            Positioned(
                left: 30,
                top: 250,
                child: Text(
                  "Flutter Web",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                left: 30,
                bottom: 60,
                child: Text(
                  "Ignacio de la Vega",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )),
          ],
        ),
      ),
    );
  }
}
