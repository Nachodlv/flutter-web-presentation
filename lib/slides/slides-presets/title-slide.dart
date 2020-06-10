import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Flutter Web",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 100,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    _linkText('https://github.com/Nachodlv/flutter-web-presentation'),
                    _linkText('https://nachodlv.github.io/flutter-web-presentation'),
                  ],
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
  
  Widget _linkText(String text) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: () => launch(text),
            child: Text(text, style: TextStyle(fontSize: 30, color: Colors.blue),)
        ),
      );
    
}
