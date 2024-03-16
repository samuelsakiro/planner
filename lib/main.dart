import 'package:flutter/material.dart';
import 'package:planner_app/modules/taskData.dart';
import 'package:planner_app/pages/task_screen.dart';
import 'package:planner_app/views/task_view/task_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: false,
      ),
      home: const TaskView(),
    );
  }
}
