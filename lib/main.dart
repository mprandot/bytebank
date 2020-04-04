import 'package:flutter/material.dart';


void main() => runApp(
  MaterialApp(home: Scaffold(
    appBar: AppBar(
      title: Text('Transferências'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        AlertDialog(content: Text('Oi', textDirection: TextDirection.ltr));
      },
      child: Icon(Icons.add),
    ),
  )),
);