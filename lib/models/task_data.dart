import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoeye/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy apple'),
    Task(name: 'buy milk'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length; //this is a getter
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task) {
    task.toggleDone(); // since we not changing the tasks list therfore used the unmodifiable tasks lists
    notifyListeners();
  }

  void delete(Task task) {
    _tasks.remove(
        task); // since we changing the tasks list therefore used the true private list;
    notifyListeners();
  }
}
