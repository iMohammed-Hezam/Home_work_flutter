import 'package:flutter/material.dart';
import 'package:home_work_flutter/home_work4_task_app/model/task_model.dart';

class TaskItemWidget extends StatelessWidget {
  final Task task;
  final int index;
  final Function(int) toggleTask;
  final Function(int) deleteTask;

  const TaskItemWidget({
    super.key,
    required this.task,
    required this.index,
    required this.toggleTask,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        color: const Color(0xffeff5f3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          leading: Checkbox(
            value: task.isDone,
            onChanged: (_) => toggleTask(index),
            activeColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          title: Text(
            task.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: task.isDone ? TextDecoration.lineThrough : null,
              color: task.isDone ? Colors.grey : Colors.black,
            ),
          ),
          subtitle: Text(
            'Created ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}',
            style: const TextStyle(fontSize: 13),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete_outline_outlined,
              color: Colors.redAccent,
            ),
            onPressed: () => deleteTask(index),
          ),
        ),
      ),
    );
  }
}
