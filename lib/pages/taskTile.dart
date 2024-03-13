import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
    TaskTile(
      {required this.onChanged,
      required this.taskCompleted,
      required this.taskName});
    final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.people_outline_sharp,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                taskName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Icon(
                    Icons.verified,
                    color: Colors.red,
                    size: 19,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'high priority',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.av_timer_rounded,
                    color: Colors.red,
                    size: 19,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '4 hours',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(value: taskCompleted, onChanged: onChanged)
                ],
              )
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(4, 4),
            blurRadius: 9,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4, 4),
            blurRadius: 9,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}