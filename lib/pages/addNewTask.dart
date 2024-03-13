import 'package:flutter/material.dart';
import 'package:planner_app/components/button.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add new task'),
            onChanged: (newText) {},
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              MyButton(onTap: () {}, title: 'save'),
              const SizedBox(
                width: 8,
              ),
              MyButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: 'cancel'),
            ],
          )
        ],
      ),
    );
  }
}
