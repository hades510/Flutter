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
        primarySwatch: Colors.grey,
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
    var arrnames = ['Rojesh', 'Rafik', 'Ajay', 'Sakar', 'Dev'];

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created
          //by the App.build method, and use it ro set our appbar title.
          title: const Text('Flutter Conatiner'),
          backgroundColor: const Color.fromARGB(173, 35, 32, 22),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var numbering = index +
                1; //i introduced this var here because you can't access the index from the above

            return Card(
              elevation: 25,
              shadowColor: Colors.brown,
              child: Container(
                color: const Color.fromARGB(250, 196, 199, 201),
                //height: 100,
                //margin:const EdgeInsets.only(bottom: 5),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Girl.jpg'),
                        radius: 25,
                        //child: Text('HI!!!!!',style: TextStyle(color: Colors.white)),
                      ),
                      //Text('$numbering.',style:const TextStyle(fontSize:15)),//displays the value of index from the above list[arrnames].
                      //or like this Text('{$index+1})
                      title: Text(
                        arrnames[index],
                        style: const TextStyle(
                          fontFamily: 'fontmain',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Container(
                          margin: const EdgeInsets.all(5),
                          child: const Text('Numbers')),
                      trailing: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(107, 167, 144, 68)),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.access_alarms_outlined)),
                      onTap: () {
                        //ignore:avoid_print
                        print('hi');
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount:
              arrnames.length, //it needs to be added to prevent the range error
        ));
  }
}
