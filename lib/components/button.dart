import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? title;

  MyButton({required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(5),
        height: 40,
        width: 90,
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[300]),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.red),
      ),
    );
  }
}
