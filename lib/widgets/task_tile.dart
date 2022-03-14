// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  void checkboxcallback(bool? checkboxstate) {
    setState(() {
      isChecked = checkboxstate!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is task one',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxstate: isChecked,
        togglecheckboxstate: checkboxcallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxstate;
  final Function(bool?) togglecheckboxstate;
  const TaskCheckBox(
      {Key? key,
      required this.checkboxstate,
      required this.togglecheckboxstate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxstate,
      onChanged: togglecheckboxstate,
    );
  }
}
