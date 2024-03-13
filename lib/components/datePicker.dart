import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  final String text;
  final String date;

  DatePicker({required this.date, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.red, width: 2.0),
      ),
      child: Column(
        children: [Text(text), Text(date)],
      ),
    );
  }
}
