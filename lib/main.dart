import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  void functionExample() {
    print('Prints to console');
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
                  ElevatedButton(
                    onPressed: functionExample,
                    child: Text('Button Text'),
                  )
                ],
              ),
              Column(
                children: [
                  Text('ROW2COL1,'),
                  Text('ROW2COL2,'),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text('Button Text'),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
