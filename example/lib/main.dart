import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quitter/flutter_quitter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: TextButton(child: Text('Press to quit'), onPressed: () {
            FlutterQuitter.quitApplication();
          },),
        ),
      ),
    );
  }
}