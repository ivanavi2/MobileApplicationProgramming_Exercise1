import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
/*   void _incrementCounter() {
    setState(() {
    });
  } */
  double _redColorValue = 0;
  double _greenColorValue = 0;
  double _blueColorValue = 0;
  double _size = 100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.alarm,
          color: Color.fromRGBO(_redColorValue.toInt(),
              _greenColorValue.toInt(), _blueColorValue.toInt(), 1.0),
          size: _size,
        ),
      ),
    ));
  }
}
