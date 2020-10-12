import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;

  CommonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Text(text),
    );
  }
}
