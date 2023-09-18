import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterModel>(context).counter;
    return Text(
      'Counter: $counter',
      style: TextStyle(fontSize: 24),
    );
  }
}
