import 'package:demo/Themes_styles_others/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          //primarySwatch: Colors.blue,
          textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontFamily: 'fontmain', fontWeight: FontWeight.bold, fontSize: 25),
        titleSmall: TextStyle(
            fontFamily: 'fontmain', fontSize: 15, fontStyle: FontStyle.italic),
      )),
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
  var arrcolors = [
    Colors.amber,
    Colors.white,
    Colors.purple,
    Colors.red,
    Colors.lime,
  ];
  var emailT = TextEditingController();
  var passT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var tim = DateTime.now();

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 42, 40),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created
          //by the App.build method, and use it ro set our appbar title.
          title: const Text('Flutter Conatiner'),
          backgroundColor: Colors.amber,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              mainAxisSpacing: 10, 
              crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              color: arrcolors[index],
            );
          },
          itemCount: arrcolors.length,
        )

 ///GRIDVIEW

        /*GridView.extent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: arrcolors[0],
            ),
          ],
        )*/
///GRIDVIEW

///LOGIN PAGE WITH TEXTFIELD, CIRCULARAVATAR, DATEFORMAT, CONTROLLER, ICON, SUFFIX & PREFIX ITEMS,
///DATE PICKER & TIME PICKER WITH ASYNCRONOUS AND AWAIT USAGE FOR RUNTIME RESULT

        /*SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //1
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                          'assets/images/6603a963a7f553cc07c63d4b_clockwork-circus-color-07.jpg'),
                    ),
                  ),
                  //2
                  Container(
                    margin: const EdgeInsets.only(bottom: 25, top: 25),
                    child: TextField(
                        controller: emailT, //this is used to fetch the username

                        style: const TextStyle(color: Colors.white),
                        decoration: decor().copyWith(
                            labelText: 'Username',
                            hintText: 'Enter email',
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 119, 105, 62),
                        )
                      )
                    ),
                  ),
                  //3
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: TextField(
                      autocorrect: false,
                      maxLength: 25,
                      obscureText: true,
                      obscuringCharacter: "*",

                      controller: passT, //this is used to fetch the password

                      style: const TextStyle(color: Colors.white),
                      decoration: decor().copyWith(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Color.fromARGB(255, 119, 105, 62),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.password_sharp,
                          color: Color.fromARGB(255, 119, 105, 62),
                        ),
                      ),
                    ),
                  ),
                  //4
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        //here the username and password which were fetched by the use
                        //of controller is collected and processed through this onPressed function.
                        String email = emailT.text;
                        String pass = passT.text;
                        setState(() {});

                        print('Username: $email \nPassword: $pass \nTime:$tim');
                      },
                      child: Text(
                        'Login In',
                        style: fontsixe15().copyWith(fontFamily: 'fontmain'),
                      ),
                    ),
                  ),
                  //5
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      DateFormat('jms').format(tim),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  //6
                  //datepicker
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: InkWell(
                      onTap: () async {
                        DateTime? datepicker = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2025),
                        );
                        //ignore:avoid_print
                        print(
                            'DatePicked ${datepicker?.day}:${datepicker?.month}:${datepicker?.year}');
                      },
                      child: Text('DatePicker',
                          style: fontsixe25()
                              .copyWith(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                  //7
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: InkWell(
                      onTap: () async {
                        TimeOfDay? timepicker = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode:
                              TimePickerEntryMode.input, //default is dial
                        );
                      },
                      child: Text('TimePicker',
                          style: fontsixe25()
                              .copyWith(fontSize: 15, color: Colors.white),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )*/
        );
  }
}
