import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddTaskScreens extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreens(
      {Key? key, this.newTaskTitle = '', required this.addTaskCallback})
      : super(key: key);

  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(117, 117, 117, 1),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'add task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              onChanged: (newtext) {
                newTaskTitle = newtext;
              },
            ),
            ElevatedButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: const Text(
                'add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
