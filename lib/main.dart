import 'package:flutter/material.dart';
import 'package:todoeye/screens/task_screens.dart';
import 'package:provider/provider.dart';
import 'package:todoeye/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //builder: (context) => TaskData(),
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
