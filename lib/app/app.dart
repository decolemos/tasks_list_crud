import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/pages/tasks_list.dart';
import 'package:tasks_list/provider/tasks_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TasksProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/':(context) => const TasksList()
        },
      ),
    );
  }
}