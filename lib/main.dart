import 'package:flutter/material.dart';
import './widgets/action_button.dart';
import './widgets/color_slider.dart';

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
  bool _checked1 = true;
  bool _checked2 = true;
  void _setIconSize(double size) {
    setState(() {
      _size = size;
    });
  }

  void _incrementIconSize() {
    setState(() {
      if (_size == 400) {
        return;
      }
      _size += 50;
    });
  }

  void _decrementIconSize() {
    setState(() {
      if (_size == 50) {
        return;
      }
      _size -= 50;
    });
  }

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
                ActionButton(
                  '-',
                  8,
                  _decrementIconSize,
                ),
                ActionButton(
                  'S',
                  5,
                  () {
                    _setIconSize(100);
                  },
                ),
                ActionButton(
                  'M',
                  3,
                  () {
                    _setIconSize(250);
                  },
                ),
                ActionButton(
                  'L',
                  5,
                  () {
                    _setIconSize(400);
                  },
                ),
                ActionButton(
                  '+',
                  5,
                  _incrementIconSize,
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
      bottomNavigationBar: SizedBox(
        height: 190,
        child: Column(children: [
          ColorSlider(
            Colors.red,
            _redColorValue,
            _greenColorValue,
            _blueColorValue,
            (double val) {
              setState(() {
                _redColorValue = val;
              });
            },
            () {
              setState(
                () {
                  _redColorValue = 255;
                  _greenColorValue = 0;
                  _blueColorValue = 0;
                },
              );
            },
          ),
          ColorSlider(
            Colors.green,
            _redColorValue,
            _greenColorValue,
            _blueColorValue,
            (double val) {
              setState(() {
                _greenColorValue = val;
              });
            },
            () {
              setState(
                () {
                  _redColorValue = 0;
                  _greenColorValue = 255;
                  _blueColorValue = 0;
                },
              );
            },
          ),
          ColorSlider(
            Colors.blue,
            _redColorValue,
            _greenColorValue,
            _blueColorValue,
            (double val) {
              setState(() {
                _blueColorValue = val;
              });
            },
            () {
              setState(
                () {
                  _redColorValue = 0;
                  _greenColorValue = 0;
                  _blueColorValue = 255;
                },
              );
            },
          ),
        ]),
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          Card(
              child: CheckboxListTile(
            title: Text('Allow resize?'),
            value: _checked1,
            onChanged: (bool value) {
              setState(() {
                _checked1 = value;
              });
            },
          )),
          Card(
              child: CheckboxListTile(
            title: Text('Allow change primer color?'),
            value: _checked2,
            onChanged: (bool value) {
              setState(() {
                _checked2 = value;
              });
            },
          )),
        ]),
      ),
    ));
  }
}
