import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Galley',
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
  var index = 0;
  var images = [
    'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg',
    'assets/images/6603a9635b84b95a79eb8544_clockwork-circus-color-10.jpg',
    'assets/images/anime .jpg',
  ];

  void _next() {
    if (images.isNotEmpty && index < images.length - 1) {
      setState(() {
        index++;
      });
    }
  }

  void _prev() {
    if (images.isNotEmpty && index > 0) {
      setState(() {
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        //backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(images[index]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: _prev, icon: const Icon(Icons.arrow_back)),
              IconButton(onPressed: _next, icon: const Icon(Icons.arrow_forward)),
            ],
          )
        ],
      ),
    );
  }
}
