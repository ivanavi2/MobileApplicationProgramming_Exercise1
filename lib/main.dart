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
      appBar: AppBar(
          title: Text('My Icon'),
          backgroundColor: Colors.brown,
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(7),
                    child: Text('-'),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                  onPressed: () => () {},
                ),
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(4),
                    child: Text('S'),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                  onPressed: () => () {},
                ),
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(2),
                    child: Text('M'),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                  onPressed: () => () {},
                ),
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(5),
                    child: Text('L'),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                  onPressed: () => () {},
                ),
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(6),
                    child: Text('+'),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                  onPressed: () => () {},
                ),
              ],
            )
          ]),
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
