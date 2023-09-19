import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  final String taskTitle;

  TaskDetailPage({required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detail'),
      ),
      body: Column(
        children: [
          // Random Image (Replace with your image widget)
          Image.asset('assets/random_image.jpg'),

          // Task Details (Replace with task details)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title: $taskTitle', style: TextStyle(fontSize: 24.0)),
                Text('Description: Task description goes here'),
                Text(
                    'Due Date: 2023-09-19'), // Replace with the actual due date
              ],
            ),
          ),
        ],
      ),
    );
  }
}
