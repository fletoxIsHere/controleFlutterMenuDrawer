import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'drawer.dart';
import 'dart:math';

class Relu extends StatefulWidget {
  const Relu({super.key});

  @override
  State<Relu> createState() => _ReluState();
}

class _ReluState extends State<Relu> {
  int _currentHorizontalIntValue = 10;
  double result = 0;
  double calculateRelu(double x) {
    return max(0, x);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relu"),
        backgroundColor: Colors.blue,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          Image.asset('assets/relu.png'),
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
              Text(calculateRelu(_currentHorizontalIntValue.toDouble())
                  .toStringAsFixed(4))
            ],
          ),
        ],
      ),
    );
  }
}
