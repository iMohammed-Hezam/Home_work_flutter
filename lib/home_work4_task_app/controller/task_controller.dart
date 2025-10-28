import 'package:flutter/material.dart';
import 'package:home_work_flutter/home_work4_task_app/model/task_model.dart';

class TaskController {
  TextEditingController textTaskController = TextEditingController();

  final List<Task> tasks = [];

  void addTask(String title) {
    if (title.isEmpty) return;
    tasks.add(Task(title: title, createdAt: DateTime.now()));
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTask(int index) {
    tasks[index].isDone = !tasks[index].isDone;
  }
}
