import 'package:flutter/material.dart';

class ListTileWidgetExample extends StatelessWidget {
  final List<int> _list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 5,color: Colors.black),
      ),
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('List Widget Example (scrollable)'),
            ..._list.map((element) {
              return Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: ListTile(
                  title: Text('Title $element'),
                  subtitle: Text('Subtitle $element'),
                  leading: CircleAvatar(
                    radius: 40,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: FittedBox(
                        child: Text('Lorem Ipsum'),
                      ),
                    ),
                  ),
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
