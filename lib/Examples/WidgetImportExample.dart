import 'package:flutter/material.dart';

class WidgetImportExample extends StatelessWidget {
  String customText;

  WidgetImportExample(this.customText);

  @override
  Widget build(BuildContext context) {
    return Text(customText);
  }
}
