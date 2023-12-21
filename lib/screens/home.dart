import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_controle/screens/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          Text(
            "Emsi",
            style: TextStyle(fontSize: 25),
          ),
          Image.asset('assets/prof.png')
        ],
      ),
    );
  }
}
