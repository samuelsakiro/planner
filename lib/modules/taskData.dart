import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  static final taskList = [
    TaskModel(
      id: 1,
      title: 'Make my bed',
      isFinished: false,
      date: DateTime.now(),
    ),
    TaskModel(
      id: 2,
      title: 'Walk the dog',
      isFinished: false,
      date: DateTime.now(),
    ),
    TaskModel(
      id: 3,
      title: 'Prepare breakfast',
      isFinished: false,
      date: DateTime.now(),
    ),
  ];

  static final dateWiseTaskList = [
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
    DateWiseModel(date: DateTime.now(), tasks: taskList),
  ];

  //get taskList => _taskList;

  void boxStateChanged(bool isFinished, int index) {
    taskList[index] = taskList[index].copyWith(isFinished: isFinished);
    notifyListeners();
  }
}

class TaskModel {
  final int id;
  final String title;
  final bool isFinished;
  final DateTime date;

  const TaskModel({
    required this.id,
    required this.title,
    required this.isFinished,
    required this.date,
  });

  TaskModel copyWith({
    int? id,
    String? title,
    bool? isFinished,
    DateTime? date,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      isFinished: isFinished ?? this.isFinished,
      date: date ?? this.date,
    );
  }
}

class DateWiseModel {
  final DateTime date;
  final List<TaskModel> tasks;

  const DateWiseModel({
    required this.date,
    required this.tasks,
  });
}
