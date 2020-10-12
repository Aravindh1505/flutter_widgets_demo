import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String label;
  final textController;

  CommonTextField(this.label, this.textController);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(labelText: label),
        controller: textController,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
