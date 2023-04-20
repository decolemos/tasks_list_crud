import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/components/task_tile.dart';
import 'package:tasks_list/models/tasks.dart';
import '../provider/tasks_provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {

    final TasksProvider tasks = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title:const Text('Lista de chamados'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const  Icon(Icons.add),
            onPressed: () {
              tasks.put(const Tasks(id: '1', number: '123456', requester: 'Maikel', description: 'Descrição do chamado', sector: 'TI'));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.count,
        itemBuilder: (ctx, i) => TaskTile(tasks.byIndex(i)),
      ),
    );
  }
}