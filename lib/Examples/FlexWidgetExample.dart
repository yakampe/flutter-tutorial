import 'package:flutter/material.dart';

class FlexWidgetExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Flex Widget Example'),
        Row(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                child: Text('Flex value 3'),
                height: 30,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                child: Text('Flex value 3'),
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Container(
                child: Text('Flex value 12'),
                height: 30,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
