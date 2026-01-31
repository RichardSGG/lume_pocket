import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskViewModel extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  TaskViewModel() {
    _tasks = [
      Task(id: '1', title: 'Estudar flutter', description: 'Estudar o básico do Flutter'),
      Task(id: '2', title: 'arquitetura mvvm', description: 'Entender a arquitetura MVVM'),
      Task(id: '3', title: 'terminar projeto', description: 'entregar tudo no prazo'),
    ];
  }

  void addTask(String title, String description) {
    final newTask = Task(
      id: (_tasks.length + 1).toString(),
      title: title,
      description: description,
    );
    _tasks.add(newTask);
    notifyListeners();
  }
}
