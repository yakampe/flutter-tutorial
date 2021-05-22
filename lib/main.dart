import 'package:devit/Examples/WidgetImportExample.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _stateChangeCount = 0;

  void functionExample() {
    print('Prints to console');
  }

  void stateFunctionExample() {
    setState(() {
      _stateChangeCount += 1;
    });
  }

  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Title'),
          ),
          body: Row(
            children: [
              Column(
                children: [
                  Text('ROW1COL1,'),
                  Text('ROW1COL2,'),
                  Text('State Has Changed $_stateChangeCount times'),
                  ElevatedButton(
                    onPressed: stateFunctionExample,
                    child: Text('Change State'),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('ROW2COL1,'),
                  Text('ROW2COL2,'),
                  WidgetImportExample('PassedArgument'),
                  ElevatedButton(
                    onPressed: () => print('Anonymous Function'),
                    child: Text('Button Text'),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
