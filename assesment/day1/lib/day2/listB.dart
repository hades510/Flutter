import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  app({super.key});

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
  var images = [
    {
      'imgpath':
          'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg',
      'txt': 'Monkey'
    },
    {'imgpath': 'assets/images/anime .jpg', 'txt': 'anime'},
    {'imgpath': 'assets/images/anime .jpg', 'txt': 'anime'},
  ];

  @override
  Widget build(BuildContext context) {
    var date = DateFormat('Hms').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Icon(Icons.menu),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/ghost.jpg'),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                images[index]['imgpath']!,
              ),
              title: Text(images[index]['txt']!),
              subtitle: Text('$date'),
            ),
          );
        },
      ),
    );
  }
}
