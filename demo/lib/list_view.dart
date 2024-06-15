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
    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created 
        //by the App.build method, and use it ro set our appbar title.
        title: const Text('Flutter Conatiner'),
	backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                     //ignore:avoid_print
                     print('Rojesh');
                  },
                  child:Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 195,
                    height: 195,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 195,
                  height: 195,
                  color: Colors.limeAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 195,
                  height: 195,
                  color: Colors.purple,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 195,
                  height: 195,
                  color: Colors.deepOrangeAccent,
                ),
              ],
              ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 11),  
            height: 195,
            
            color: Colors.green,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 11),
            height: 200,
            
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 11),
            height: 200,
            
            color: Colors.red,
          ),
        ],
      ),
      ),
    );
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
