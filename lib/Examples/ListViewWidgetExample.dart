import 'package:flutter/material.dart';

class ListViewWidgetExample extends StatelessWidget {
  final int _totalCount = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('List View Widget Example'),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
          height: 50,
          child: ListView.builder(
            itemBuilder: (ctx, i) {
              return Text('Item ${i+1} out of $_totalCount');
            },
            itemCount: _totalCount,
          ),
        ),
      ],
    );
  }
}
