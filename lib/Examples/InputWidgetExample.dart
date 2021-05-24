import 'package:flutter/material.dart';

class InputWidgetExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputWidgetStateExample();
  }
}

class InputWidgetStateExample extends State<InputWidgetExample> {
  String input = '0';


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Input Example'),
        TextField(
          keyboardType: TextInputType.numberWithOptions(decimal: true),
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
        Text(double.parse(input).toStringAsFixed(10))
      ],
    );
  }
}
