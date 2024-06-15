import 'package:day1/widget/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'I&IN change',
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
  var icons = Icons.arrow_forward; //for network
  var icon = Icons.arrow_back;
  var image =
      'https://i.pinimg.com/564x/78/71/ea/7871eaa1e1276b5c098945f930ef8fcd.jpg';
  var index = 0;
  var  localimg = [
    'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg',
    'assets/images/6603a9635b84b95a79eb8544_clockwork-circus-color-10.jpg',
    'assets/images/anime .jpg',
  ];

  void _changeall() {
    setState(() {
      //icon change
      icons =
          icons == Icons.arrow_forward ? Icons.arrow_back : Icons.arrow_forward;
      //image change
      image = image ==
              'https://i.pinimg.com/564x/78/71/ea/7871eaa1e1276b5c098945f930ef8fcd.jpg'
          ? 'https://i.pinimg.com/564x/41/41/32/4141325ca7517b8d170dbd763194e7ca.jpg'
          : 'https://i.pinimg.com/564x/78/71/ea/7871eaa1e1276b5c098945f930ef8fcd.jpg';
    });
  }

  void _next() {
    if (index < localimg.length - 1) {
      setState(() {
        index++;
      });
    }
  }

  void _prev() {
    if (index > 0) {
      setState(() {
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconImage Changes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: wide,
              height: length,
              margin: EdgeInsets.all(0),
              child: Image.network(image),
            ),
            Center(
              child: IconButton(
                onPressed: _changeall,
                icon: Icon(icons),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              width: wide,
              height: 200,
              child: Image(
                image: AssetImage(localimg[index]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _prev,
                  tooltip: 'Previous',
                  icon: Icon(
                    icon,
                    color: body,
                  ),
                ),
                IconButton(
                  onPressed: _next,
                  tooltip: 'Next',

                  icon: Icon(
                    Icons.arrow_forward,
                    color: body,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
