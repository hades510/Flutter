import 'package:flutter/material.dart';

void main() {
  runApp(rectangle());
}

class rectangle extends StatelessWidget {
  const rectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'rectangle',
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
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Rectangle',
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
