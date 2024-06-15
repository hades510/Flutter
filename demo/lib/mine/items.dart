// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class item extends StatelessWidget {
  const item({super.key,
  
  
  
  
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        onTap: () {},
        tileColor: Color.fromARGB(244, 239, 236, 236),
        leading: const Icon(
          Icons.check_box,
          color: Colors.blue,
          size: 25,
        ),
        title: const Text(
          'Yeah',
          style: TextStyle(fontFamily: 'allfont'),
        ),
        trailing: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
