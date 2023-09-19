import 'package:flutter/material.dart';

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Main Task Name'),
            // Add input fields for task name, due date, description, etc.
            // ...
            ElevatedButton(
              onPressed: () {
                // Add logic to create a new task
                Navigator.pop(context); // Return to the previous screen
              },
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
