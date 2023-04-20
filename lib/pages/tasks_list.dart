import 'package:flutter/material.dart';
import 'package:tasks_list/components/task_tile.dart';
import '../data/dummy_tasks.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {

    const tasks = {...DUMMY_TASKS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de chamados'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (ctx, i) => TaskTile(tasks.values.elementAt(i)),
      ),
    );
  }
}