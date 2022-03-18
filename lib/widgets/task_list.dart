import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeye/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTile: taskData.tasks[index].name,
              checkboxcallback: (bool? checkboxstate) {
                taskData.updateTasks(taskData.tasks[index]);
              },
              onLongPressCallBack: () {
                taskData.delete(taskData.tasks[index]);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
