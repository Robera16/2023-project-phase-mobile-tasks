import 'package:flutter/material.dart';
import '../widgets/counter_display.dart';
import '../widgets/increment_button.dart';
import '../widgets/decrement_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IncrementButton(),
                SizedBox(width: 20),
                DecrementButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
