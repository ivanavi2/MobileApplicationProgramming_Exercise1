import 'package:flutter/material.dart';
import './widgets/action_button.dart';

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
            Row(children: <Widget>[
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.brown,
                      inactiveTrackColor: Colors.brown[100],
                      trackHeight: 3.0,
                      thumbColor: Colors.brown,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 8.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: _redColorValue,
                      min: 0.0,
                      max: 255.0,
                      divisions: 255,
                      onChanged: (value) {
                        setState(() {
                          _redColorValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: FloatingActionButton(
                    child: Text(
                      _redColorValue.toStringAsFixed(0),
                    ),
                    backgroundColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        _redColorValue = 255.0;
                        _greenColorValue = 0;
                        _blueColorValue = 0;
                      });
                    },
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.brown,
                      inactiveTrackColor: Colors.brown[100],
                      trackHeight: 3.0,
                      thumbColor: Colors.brown,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 8.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: _greenColorValue,
                      min: 0.0,
                      max: 255.0,
                      divisions: 255,
                      onChanged: (value) {
                        setState(() {
                          _greenColorValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: FloatingActionButton(
                    child: Text(
                      _greenColorValue.toStringAsFixed(0),
                    ),
                    backgroundColor: Colors.green,
                    onPressed: () {
                      setState(() {
                        _redColorValue = 0;
                        _greenColorValue = 255;
                        _blueColorValue = 0;
                      });
                    },
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.brown,
                      inactiveTrackColor: Colors.brown[100],
                      trackHeight: 3.0,
                      thumbColor: Colors.brown,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 8.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: _blueColorValue,
                      min: 0.0,
                      max: 255.0,
                      divisions: 255,
                      onChanged: (value) {
                        setState(() {
                          _blueColorValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: FloatingActionButton(
                    child: Text(
                      _blueColorValue.toStringAsFixed(0),
                    ),
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      setState(() {
                        _redColorValue = 0;
                        _greenColorValue = 0;
                        _blueColorValue = 255.0;
                      });
                    },
                  ),
                ),
              ),
            ]),
          ])),
    ));
  }
}
