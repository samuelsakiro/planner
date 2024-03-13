import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  final _taskList = [
    ['make a tutoral', false],
    ['make a tutoral', false],
    ['make a tutoral', false],
  ];

  get taskList => _taskList;

  void boxStateChanged(bool? value,) {
    taskList[1] = !taskList[1];
    notifyListeners();
  }
}
