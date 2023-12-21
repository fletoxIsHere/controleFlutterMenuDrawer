import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'drawer.dart';
import 'dart:math';

class Sigmoid extends StatefulWidget {
  const Sigmoid({Key? key}) : super(key: key);

  @override
  State<Sigmoid> createState() => _SigmoidState();
}

class _SigmoidState extends State<Sigmoid> {
  int _currentHorizontalIntValue = 10;
  double result = 0;
  double calculateSigmoid(double x) {
    return 1 / (1 + exp(-x));
  }

// Usage in your widget's state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sigmoid"),
        backgroundColor: Colors.blue,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          Image.asset('assets/sigmoid.png'),
          SizedBox(height: 16),
          NumberPicker(
            value: _currentHorizontalIntValue,
            minValue: -10,
            maxValue: 10,
            step: 1,
            itemHeight: 100,
            axis: Axis.horizontal,
            onChanged: (value) =>
                setState(() => _currentHorizontalIntValue = value),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(calculateSigmoid(_currentHorizontalIntValue.toDouble())
                  .toStringAsFixed(4))
            ],
          ),
        ],
      ),
    );
  }
}
