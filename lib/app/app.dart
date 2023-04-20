import 'package:flutter/material.dart';
import 'package:tasks_list/pages/tasks_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const TasksList()
      },
    );
  }
}