import 'package:demo/mine/colors.dart';
import 'package:demo/mine/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duplicate Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'allfont',
          ),
        ),
      ),
      home: const Home(),
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
      appBar: _appbarB(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                search(),
                Expanded(
                  child: ListView(
                    children: [
                      title(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                      const item(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child:
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.add))),
          )
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(173, 239, 238, 238),
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            fontFamily: 'allfont',
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 10, left: 25),
      child: const Text(
        'TODO LIST',
        style: TextStyle(
          fontFamily: 'allfont',
          fontWeight: FontWeight.w600,
          fontSize: 40,
        ),
      ),
    );
  }

  AppBar _appbarB() {
    return AppBar(
      backgroundColor: twhite_forB,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg',
            ),
          )
        ],
      ),
    );
  }
}
