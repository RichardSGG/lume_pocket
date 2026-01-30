import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskViewmodel extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;
  void addTask(String title, String description){
    final newTask = Task(
      id: (_tasks.length + 1).toString(),
      title: title,
      description: description,
    );
    _tasks.add(newTask);
    notifyListeners();
  }
}