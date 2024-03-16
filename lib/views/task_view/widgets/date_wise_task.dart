import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWiseTask extends StatelessWidget {
  const DateWiseTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          margin: EdgeInsets.only(right: 8),
          child: Column(
            children: [
              Text('Wed',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
              ),),
              SizedBox(height: 5),
              Text('20',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
              ),),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.red,
    ),
    );
  }
}
