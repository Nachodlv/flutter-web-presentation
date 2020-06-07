import 'package:flutter/material.dart';
import 'package:hello_world/widgets/dart-code.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.40,
          child: Column(
            children: <Widget>[
              MyAppBar(
                title: Text(
                  'More Widgets!',
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('Hello, world!', style: TextStyle(fontSize: 40),),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.60,
          child: DartCode("""
          class MyAppBar extends StatelessWidget {
            MyAppBar({this.title});

            // Fields in a Widget subclass are always marked "final".

            final Widget title;

            @override
            Widget build(BuildContext context) {
              return Container(
                height: 100, // in logical pixels
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(color: Colors.blue[500]),
                // Row is a horizontal, linear layout.
                child: Row(
                  // <Widget> is the type of items in the list.
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      tooltip: 'Navigation menu',
                      onPressed: null, // null disables the button
                    ),
                    // Expanded expands its child to fill the available space.
                    Expanded(
                      child: title,
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search',
                      onPressed: null,
                    ),
                  ],
                ),
              );
            }
          }
          """, 20),
        )
      ],
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
