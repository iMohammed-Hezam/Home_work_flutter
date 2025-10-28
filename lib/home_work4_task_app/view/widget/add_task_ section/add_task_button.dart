import 'package:flutter/material.dart';

class AddTaskButton extends StatelessWidget {
  final void Function() onTap;
  const AddTaskButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xffdee4e2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add, size: 35, color: Color(0xff8e9492)),
      ),
    );
  }
}
