// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Day 01',
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
  String Ttxt = 'Click me!!'; //initial value of Tbtntext
  Color Tbtn = Colors.black; //initial value of color

  String Etxt = 'Click me!!!';
  Color Wcon = Colors.red;

  var mar = EdgeInsets.symmetric(vertical: 10);

  int counter = 0;

  void  
  _inc() {
    setState(() {
      counter++;
    });
  }

  void _dec() {
    setState(() {
      counter--;
    });
  }

  void _change1() {
    setState(() {
      Etxt =
          'ElevatedBtn ${Random().nextInt(200) + 110}'; //gives us range from 110 to 330
      Wcon = Color.fromARGB(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  void _change() {
    setState(
      () {
        Ttxt = 'Textbutton ${Random().nextInt(250)}';
        Tbtn = Color.fromARGB(
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
        );
      },
    );
  } /*Here, firstly i created a variables which will contain initial values of the widget given at the body.
    String Ttxt = 'Click me!!'; //initial value of Text Widget
    Color Tbtn = Colors.black; //initial value of color property of Text Widget
////
then, i created a function with a pre-defined function called Random() which gives random number everytime it is called.
with setting the limit using {.nextInt(_limit)}
    void _change() {
    var btntxt =
        'Button ${Random().nextInt(100)}'; // it will provide random numbers from o to 100
    var txtcolor = Color.fromARGB(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
//// 
then , i used setstate(() {}); function which is a method provided by the flutter's State class allows you to notify 
the framework that changes have been made,AND it needs a rebuilt.

      you use setstate when you want to update the state of the stateful widget,this typically happen from user interaction and data changes.


   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DAy 01'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          decoration: BoxDecoration(
            color: Wcon,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(60),
            ),
          ),
          width: 720,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: mar,
                child: TextButton(
                  onPressed: _change,
                  child: Text(
                    Ttxt,
                    style: TextStyle(color: Tbtn),
                  ),
                ),
              ),
              Container(
                margin: mar,
                child: ElevatedButton(
                  onPressed: _change1,
                  child: Text(Etxt),
                ),
              ),
              Container(
                margin: mar,
                child: Text('$counter'),
              ),
              Container(
                margin: mar,
                child: FloatingActionButton(
                  onPressed: _inc,
                  child: Icon(
                    Icons.add,
                    color: Tbtn,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: IconButton(
                  onPressed: _dec,
                  icon: Icon(
                    Icons.remove,
                    color: Tbtn,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
