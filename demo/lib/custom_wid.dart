import 'package:demo/Themes_styles_others/styles.dart';
import 'package:demo/list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom_widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //This is a Call Back Function
  /*callback() {
    print('Clicked IT!!');
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent.shade400,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Custom Widget'),
      ),
      body: const Column(
        children: [
          Cirava(),
          Listtil(),
          GridB(),
          LoginI(),
        ],
      ),
    );
  }
}

class Cirava extends StatelessWidget {
  //ANOTHER WAY IS SIMPLY CREATE A WIDGET
// Widget Cirava(){
  // return (content);
// }
  const Cirava({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) {
            var numbering = index + 1; //used for numbering
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 25,
                child: Text(
                  numbering.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Listtil extends StatelessWidget {
  const Listtil({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) {
            var numbering = index + 1;
            return ListTile(
              leading: Text(
                numbering.toString(),
              ),
              title: const Text('Name'),
              subtitle: const Text('Number'),
              trailing: const Icon(Icons.delete),
            );
          },
          itemCount: 10, //scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class GridB extends StatelessWidget {
  const GridB({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.purple,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            var numbering = index + 1;
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  numbering.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class LoginI extends StatefulWidget {
  const LoginI({super.key});

  @override
  State<LoginI> createState() => _LoginIState();
}

class _LoginIState extends State<LoginI> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
