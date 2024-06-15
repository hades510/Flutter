import 'package:flutter/material.dart';
import 'package:practice/model.dart';

class Item extends StatelessWidget {
  final ToDo todo; //instance of class Todo from model.dart
  final Todochange; //

  const Item({
    //constructor of this class
    super.key, //class the contructor of parent class if it exsists!!
    required this.todo,
    required this.Todochange,
  });
//ITEM MODEL
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () {
          Todochange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        tileColor: Color.fromARGB(199, 232, 228, 228),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.todotxt!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: 'fontT',
            //decoration: todo.isDone ? TextDecoration.lineThrough : null),
          ),
        ),
        trailing: Container(
          //padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 9),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
              onPressed: () {},
              color: Colors.white,
              iconSize: 15,
              icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
