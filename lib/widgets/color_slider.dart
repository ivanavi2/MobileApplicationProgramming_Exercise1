import 'package:flutter/material.dart';

class ColorSlider extends StatefulWidget {
  final Color color;
  final double redColorValue;
  final double greenColorValue;
  final double blueColorValue;
  final Function setColorSlider;
  final Function setColorFloatingButton;
  final double sliderValue = 0;

  ColorSlider(
    this.color,
    this.redColorValue,
    this.greenColorValue,
    this.blueColorValue,
    this.setColorSlider,
    this.setColorFloatingButton,
  );

  double returnSliderValue() {
    if (color == Colors.red) {
      return redColorValue;
    }
    if (color == Colors.green) {
      return greenColorValue;
    }
    if (color == Colors.blue) {
      return blueColorValue;
    }
    return 0;
  }

  @override
  _ColorSliderState createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {
  @override
  Widget build(BuildContext context) {
    final _currentSliderValue = widget.returnSliderValue();
    return Row(children: <Widget>[
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
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
            ),
            child: Slider(
              value: _currentSliderValue,
              min: 0.0,
              max: 255.0,
              divisions: 255,
              onChanged: (value) {
                widget.setColorSlider(value);
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
              _currentSliderValue.toStringAsFixed(0),
            ),
            backgroundColor: widget.color,
            onPressed: () {
              widget.setColorFloatingButton();
            },
          ),
        ),
      ),
    ]);
  }
}
