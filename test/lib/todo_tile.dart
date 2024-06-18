import 'package:flutter/material.dart';
import 'package:test/constants/colors.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField",
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
    var email = TextEditingController();

    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            controller: email,
            decoration: InputDecoration(
              prefixText: "Email",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
