import 'package:devit/Examples/CallbackWidgetExample.dart';
import 'package:devit/Examples/InputWidgetExample.dart';
import 'package:devit/Examples/ListViewWidgetExample.dart';
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
  var _listExample = [
    {'parameter': '1st Object Parameter Property Value'},
    {'parameter': '2nd Object Parameter Property Value'}
  ];

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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                        CallbackWidgetExample(stateFunctionExample),
                        ..._listExample.map((obj) {
                          return Text(obj['parameter']);
                        }).toList(),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Text('Widget Example title'),
                              Container(
                                width: 200,
                                child: Text(
                                  'Widget itself',
                                  style: TextStyle(),
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                            width: 240,
                            margin: EdgeInsets.all(30),
                            child: InputWidgetExample()
                        ),
                      )
                    ],
                  ),
                ),
                ListViewWidgetExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
