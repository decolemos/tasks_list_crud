import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tasks_list/data/dummy_tasks.dart';
import '../models/tasks.dart';

class TasksProvider with ChangeNotifier {
  final Map<String, Tasks> _items = {...DUMMY_TASKS};

  TasksProvider();

  List<Tasks> get all{
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Tasks byIndex(int i) {
    return _items.values.elementAt(i);
  }


  //adicionar e editar
  void put(Tasks tasks) {

    if(tasks.id.isNotEmpty) {
      _items.update(
        tasks.id,
        (_) => Tasks(
          id: tasks.id,
          number: tasks.number, 
          requester: tasks.requester, 
          description: tasks.description, 
          sector: tasks.sector)
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => Tasks(
        id: id,
        number: tasks.number,
        requester: tasks.requester,
        description: tasks.description,
        sector: tasks.sector
      ),
    );
      notifyListeners();
    }

  }
  // void remove(Tasks? tasks) {
  //   if(tasks != null && tasks.id != null) {
  //     _items.remove(tasks.id);
  //     notifyListeners();
  //   }
  // }

  void removeById(String id) {
    for(int i = 0; i < _items.length; i++) {
      if(_items[i]!.id == id){
        _items.remove(i);
        notifyListeners();
      }
    }
  }
}