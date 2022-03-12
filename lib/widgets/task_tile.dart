import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('this is task one'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? newValue) {},
      ),
    );
  }
}
