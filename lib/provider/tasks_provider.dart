import 'package:flutter/material.dart';
import 'package:tasks_list/data/dummy_tasks.dart';
import '../models/tasks.dart';

class TasksProvider with ChangeNotifier {
  final Map<String, Tasks> _items = {...DUMMY_TASKS};

  List<Tasks> get all{
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}