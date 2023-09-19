import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: Column(
        children: [
          // Random Image
          Image.asset('assets/random_image.jpg'),
          // Task List Text and Items
          // Replace with code to display task list
          // ...
          // Create Task Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/createTask');
            },
            child: Text('Create Task'),
          ),
        ],
      ),
    );
  }
}
