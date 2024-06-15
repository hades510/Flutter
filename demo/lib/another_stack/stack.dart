import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 20, blurRadius: 20)
            ],
          ),
          child: const Text(
            'Positioned',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(color: Colors.amber, blurRadius: 50, spreadRadius: 90)
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.blueGrey),

        /////
        child: Stack(
          children: [
            Container(
              width: 200,
              //height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
