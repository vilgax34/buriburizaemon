import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My first App'),
      centerTitle: true,
      backgroundColor: Colors.blue[600],
    ),
    body: Center(
      child: Text("HelloWorld"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('Thank You');
      },
      child: Text('click'),
      backgroundColor: Colors.blue[600],
    ),
  ),
));