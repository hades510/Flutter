// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:demo/Themes_styles_others/buttons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'button model',
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
  ////
  var btn = 'Login';
  var btn2 = 'Press';
  IconData ico1 = Icons.lock;
  IconData ico2 = Icons.play_arrow;

  ////
  void _update() {
    print('Clicked it');
    setState(() {
      btn = btn == 'Login' ? 'Click' : "Login";
      ico1 = ico1 == Icons.lock ? Icons.face_unlock_outlined : Icons.lock;
    });
  }

  void _update0() {
    print('Clicked it agianr');
    setState(() {
      btn2 = btn2 == 'Press' ? 'Clicked' : 'Press';
      ico2 = ico2 == Icons.play_arrow ? Icons.pause : Icons.play_arrow;
    });
  }

  ////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Button model')),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //1
              button(
                btname: Text(
                  btn,
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(
                  ico1,
                  color: Colors.black,
                ),
                callback: () {
                  _update();
                },
              ),
              //2
              button(
                btname: Text(
                  btn2,
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(
                  ico2,
                  color: Colors.black,
                ),
                callback: () {
                  _update0();
                },
              ),
              FaIcon(FontAwesomeIcons.addressCard),
            ],
          ),
        ),
      ),
    );
  }
}
