import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/tasks_provider.dart';
import '../models/tasks.dart';

class TaskTile extends StatelessWidget {

  final Tasks task;

  const TaskTile(this.task, {super.key});

  @override
  Widget build(BuildContext context) {

    final TasksProvider tasks = Provider.of(context);

    return ListTile(
      // leading: Image.asset('assets/malwee_logo.png')
      leading: const CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/malwee_logo.png'),
      ),
      title: Text('N° Chamado: ${task.number}'),
      subtitle: Text(task.description),
      trailing: SizedBox(
        width: 80,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                tasks.put(task);
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                tasks.removeById(task.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}