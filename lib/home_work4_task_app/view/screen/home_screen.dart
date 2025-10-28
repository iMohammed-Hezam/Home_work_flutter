import 'package:flutter/material.dart';
import 'package:home_work_flutter/home_work4_task_app/controller/task_controller.dart';
import 'package:home_work_flutter/home_work4_task_app/view/widget/add_task_%20section/add_task_widget.dart';
import 'package:home_work_flutter/home_work4_task_app/view/widget/no_task_widget.dart';
import 'package:home_work_flutter/home_work4_task_app/view/widget/task_item_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TaskController taskController = TaskController();

  void addTask(String title) {
    if (title.isEmpty) return;
    setState(() {
      taskController.addTask(title);
    });
    taskController.textTaskController.clear();
  }

  void deleteTask(int index) {
    setState(() {
      taskController.deleteTask(index);
    });
  }

  void toggleTask(int index) {
    setState(() {
      taskController.toggleTask(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5fbf9),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'My Tasks',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: const Color(0xff9df2e4),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          Expanded(
            child: taskController.tasks.isEmpty
                ? NoTaskWidget()
                : ListView.builder(
                    itemCount: taskController.tasks.length,
                    itemBuilder: (context, index) {
                      final task = taskController.tasks[index];

                      return TaskItemWidget(
                        task: task,
                        index: index,
                        toggleTask: toggleTask,
                        deleteTask: deleteTask,
                      );
                    },
                  ),
          ),

          AddTaskWidget(
            controller: taskController.textTaskController,
            onTap: () => addTask(taskController.textTaskController.text),
          ),
        ],
      ),
    );
  }
}
