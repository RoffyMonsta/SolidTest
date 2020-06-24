import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
        body: InkWell(
          onTap: () {
            setState(() {});
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Hey there',
                    style: TextStyle(
                        fontSize: Random().nextInt(40).toDouble(),
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)])),
              ],
            ),
          ),
        ));
  }
}
