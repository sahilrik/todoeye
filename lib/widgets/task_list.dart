import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeye/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTile: widget.tasks[index].name,
          checkboxcallback: (bool? checkboxstate) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
