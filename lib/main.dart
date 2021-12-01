import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('My App', style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontFamily: 'GoblinOne'
          ),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Нажми'),
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () {
            print('Clicked');
          },
        ),
      ),
    );
  }
}