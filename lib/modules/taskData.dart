import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  static final taskList = [
    const TaskModel(id: 1, title: 'Make my bed', isFinished: false),
    const TaskModel(id: 2, title: 'Walk the dog', isFinished: false),
    const TaskModel(id: 3, title: 'Prepare breakfast', isFinished: false),
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

  const TaskModel({
    required this.id,
    required this.title,
    required this.isFinished,
  });

  TaskModel copyWith({
    int? id,
    String? title,
    bool? isFinished,
  }) {

    print('>>> COPY WITH >> $isFinished');
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}
