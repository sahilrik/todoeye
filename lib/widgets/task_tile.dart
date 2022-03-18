// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final void Function(bool?) checkboxcallback;
  final VoidCallback? onLongPressCallBack;
  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTile,
      required this.checkboxcallback,
      required this.onLongPressCallBack})
      : super(key: key);

  // void checkboxcallback(bool? checkboxstate) {
  //   setState(() {
  //     isChecked = checkboxstate!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
