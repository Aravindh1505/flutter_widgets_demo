import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final Function buttonClickHandher;

  CommonButton(this.buttonText, this.buttonClickHandher);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text(buttonText), onPressed: () => buttonClickHandher()),
    );
  }
}
