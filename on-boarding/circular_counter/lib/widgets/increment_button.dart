import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<CounterModel>(context, listen: false).increment();
      },
      child: Text('Increment'),
    );
  }
}
