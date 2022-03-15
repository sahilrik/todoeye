import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeye/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy apple'),
    Task(name: 'buy milk'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(isChecked: false, taskTile: tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
