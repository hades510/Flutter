// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/item.dart';
import 'package:practice/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'ToDo Application',
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
          fontFamily: 'fontT',
        )),
      ),
      debugShowCheckedModeBanner: false,
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
  final list = ToDo.todolist();
  var _task = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 219, 218, 218),
      appBar: _buildappbar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                search(),
                Expanded(
                  child: ListView(
                    children: [
                      Title(),
                      for (ToDo i in list)
                        Item(
                          todo: i,
                          Todochange: _Todochange,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      right: 10,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(199, 232, 228, 228),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _task,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add New ToDo',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "fontT",
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _Todochange(ToDo ii) {
    setState(() {
      ii.isDone = !ii.isDone;
    });
  }

//SEARCH BAR
  Widget search() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 210, 207, 207),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(118, 0, 0, 0),
            size: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Color.fromARGB(124, 0, 0, 0),
            fontFamily: 'fontT',
          ),
        ),
      ),
    );
  }

//TITLE

  Widget Title() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 20,
      ),
      child: const Text(
        'ToDo List',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'fontT',
        ),
      ),
    );
  }

//APPBAR
  AppBar _buildappbar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(252, 219, 218, 218),
      elevation: 0, //SHADOW BORDER
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 25,
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Girl.jpg'),
            radius: 20,
          )
        ],
      ),
    );
  }
}
