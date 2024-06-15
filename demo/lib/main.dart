import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(243, 27, 21, 2)),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    ImageProvider image = const AssetImage('assets/images/Girl.jpg');
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created
          //by the App.build method, and use it ro set our appbar title.
          title: const Text('Flutter Conatiner'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SizedBox(
          width: 720,
          height: 1080,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    width: 50,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Colors.blueAccent,
                        ),
                      ],
                      color: Colors.blueAccent,
                    )),
              ),
              Container(
                height: 200,
                width: 50,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.amber.shade500,
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    //borderRadius: BorderRadius.circular(200),
                    shape: BoxShape.circle,
                  ),
                  child:
                      const Image(image: AssetImage('assets/images/Girl.jpg')),
                ),
              ),
              Container(
                width: 50,
                height: 200,
                margin: const EdgeInsets.only(left: 5),
                color: Colors.deepOrange,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 50,
                  height: 200,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ));
  }
}

/*import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

 
  @override
  State<Dashboard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    
    var arrnames=['Rojesh','Rafik','sakar','Ajay','Uniq'];
    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the Dashboard object that was created 
        //by the App.build method, and use it ro set our appbar title.
        title: const Text('Flutter Conatiner'),
	      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        itemCount: arrnames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 100,thickness: sqrt1_2,);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 50),

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrnames[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrnames[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrnames[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                ),
              ],
            ),
          );
        },
      ),
      //This trailing comma makes auto-formtting nicer for build methods.
    );
  }
}*/
