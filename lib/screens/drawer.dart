import 'package:flutter/material.dart';

import 'home.dart';
import 'relu.dart';
import 'sigmoid.dart';
import 'tanH.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/prof.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "deep learning",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "activation functions",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              )),
          ListTile(
            title: const Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: const Text('Relu'),
            leading: Icon(Icons.how_to_reg_outlined),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Relu()));
            },
          ),
          ListTile(
            title: const Text('Sigmoid'),
            leading: Icon(Icons.signal_cellular_no_sim_outlined),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sigmoid()));
            },
          ),
          ListTile(
            title: const Text('TanH'),
            leading: Icon(Icons.bookmark_outline_outlined),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TanH()));
            },
          ),
        ],
      ),
    );
  }
}
