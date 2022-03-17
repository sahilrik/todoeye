import 'package:flutter/foundation.dart';
import 'package:todoeye/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy apple'),
    Task(name: 'buy milk'),
  ];

  int get taskCount {
    return tasks.length; //this is a getter
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
