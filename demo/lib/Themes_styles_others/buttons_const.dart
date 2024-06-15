import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class button extends StatelessWidget {
  final VoidCallback callback;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textstyle;
  final Text btname;
  
  const button({
    super.key,
    required this.callback,
    this.icon,
    this.bgcolor = const Color.fromARGB(255, 100, 153, 197),
    this.textstyle,
    required this.btname,
  });

  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
        ),
      ),
      onPressed: () {
        callback();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                btname,
              ],
            )
          : btname,
    );
  }
}
