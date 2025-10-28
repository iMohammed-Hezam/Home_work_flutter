import 'package:flutter/material.dart';
import 'package:home_work_flutter/home_work4_task_app/view/widget/add_task_%20section/add_task_button.dart';

class AddTaskWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onTap;
  const AddTaskWidget({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff5fbf9),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(70),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffebf1ef),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Add new task...',
                hintStyle: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(width: 10),

          AddTaskButton(onTap: onTap),
        ],
      ),
    );
  }
}
