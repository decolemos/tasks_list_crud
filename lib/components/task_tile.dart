import 'package:flutter/material.dart';

import '../models/tasks.dart';

class TaskTile extends StatelessWidget {

  final Tasks tasks;

  const TaskTile(this.tasks, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset('assets/malwee_logo.png')
      leading: const CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/malwee_logo.png'),
      ),
      title: Text('N° Chamado: ${tasks.number}'),
      subtitle: Text(tasks.description),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}