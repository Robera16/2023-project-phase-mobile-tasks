import 'package:flutter/material.dart';
import "./screens/task_list_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/background_image.jpg', // Add your image path
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          // Get Started Button
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the task list page here.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskListPage()),
                );
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
