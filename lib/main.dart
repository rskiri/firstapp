import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.deepOrange,
          activeColor: Colors.yellowAccent,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
          ],
          initialActiveIndex: 2,//optional, default as 0
          onTap: (int i) => print('click index=$i'),
        )
      ),
    );
  }
}