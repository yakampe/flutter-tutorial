import 'package:flutter/material.dart';

class InputWidgetExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputWidgetStateExample();
  }
}

class InputWidgetStateExample extends State<InputWidgetExample> {
  String input = '';


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Input Example'),
        TextField(
          onSubmitted: (val) {
            setState(() {
              this.input = val;
            });
          },
          decoration: InputDecoration(
              labelText: 'Input Label Example'),
        ),
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Text('Output'),
        ),
        Text(input)
      ],
    );
  }
}
