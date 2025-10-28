import 'package:flutter/material.dart';

class NoTaskWidget extends StatelessWidget {
  const NoTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
            size: 80,
            color: Colors.teal.shade200,
          ),
          const SizedBox(height: 10),
          Text(
            'No tasks yet',
            style: TextStyle(fontSize: 20, color: Colors.grey[700]),
          ),
          const Text(
            'Add a task to get started',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );
  }
}
