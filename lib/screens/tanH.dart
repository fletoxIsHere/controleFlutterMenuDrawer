import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'drawer.dart';
import 'dart:math';

class TanH extends StatefulWidget {
  const TanH({super.key});

  @override
  State<TanH> createState() => _TanHState();
}

class _TanHState extends State<TanH> {
  int _currentHorizontalIntValue = 10;
  double result = 0;
  double calculateSigmoid(double x) {
    return (exp(x) - exp(-x)) / (exp(x) + exp(-x));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TanH"),
        backgroundColor: Colors.blue,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          Image.asset('assets/tanh.png'),
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
