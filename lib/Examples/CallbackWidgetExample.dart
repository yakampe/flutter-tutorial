import 'package:flutter/material.dart';

class CallbackWidgetExample extends StatelessWidget {
  final Function _callbackFunctionHandler;

  CallbackWidgetExample(this._callbackFunctionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Call Back'),
        onPressed: _callbackFunctionHandler,
      ),
    );
  }
}
