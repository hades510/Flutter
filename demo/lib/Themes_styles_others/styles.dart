import 'package:flutter/material.dart';

TextStyle fontsixe25() {
  return const TextStyle(
    fontFamily: 'fontmain',
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

TextStyle fontsixe15() {
  return const TextStyle(
      fontFamily: 'fontmain02',
      fontSize: 15,
      fontStyle: FontStyle.italic,
      color: Colors.black);
}

InputDecoration decor() {
  return const InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(21),
          bottomRight: Radius.circular(21),
        ),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 2, 2, 2),
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.black,
      )),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            bottomRight: Radius.circular(21),
          ),
          borderSide: BorderSide(color: Color.fromARGB(255, 119, 105, 62))));
}
