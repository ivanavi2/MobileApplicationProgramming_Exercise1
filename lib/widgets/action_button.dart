import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String buttonText;
  final int buttonPadding;
  final Function changeButtonSize;

  ActionButton(this.buttonText, this.buttonPadding, this.changeButtonSize);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.all(buttonPadding.toDouble()),
        child: Text(buttonText),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1.0,
            )),
      ),
      onTap: changeButtonSize,
    );
  }
}
