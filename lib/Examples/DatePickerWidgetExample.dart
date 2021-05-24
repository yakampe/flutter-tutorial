import 'package:flutter/material.dart';

class DatePickerWidgetExample extends StatefulWidget {
  @override
  _DatePickerWidgetExampleState createState() =>
      _DatePickerWidgetExampleState();
}

class _DatePickerWidgetExampleState extends State<DatePickerWidgetExample> {
  DateTime _selectedDate;

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(
          Duration(days: 31),
        ),
        lastDate: DateTime.now().add(
          Duration(days: 2),
        )).then((val) => setState(() {
          this._selectedDate = val;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
      child: Column(
        children: [
          Text('DatePickerExample '),
          ElevatedButton(
            onPressed: _showDatePicker,
            child: Text('Date Picker'),
          ),
          Text(_selectedDate == null
              ? 'No Date Selected'
              : 'Selected date == ${_selectedDate.toString()}')
        ],
      ),
    );
  }
}
