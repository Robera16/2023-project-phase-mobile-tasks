import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  TaskItem({
    Key? key,
    required this.title,
    required this.description,
    required this.deadline,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final String deadline;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListTile(
          title: Text(title),
          subtitle: Text('Deadline: $deadline'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
