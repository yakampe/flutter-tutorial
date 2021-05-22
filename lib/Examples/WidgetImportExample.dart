import 'package:flutter/material.dart';

class WidgetImportExample extends StatelessWidget {
  String customText;

  WidgetImportExample(this.customText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: EdgeInsets.all(6),
      child: Text(
        customText,
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.left,
      ),
    );
  }
}
