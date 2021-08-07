import 'package:flutter/material.dart';
import 'package:intern_task_6/Screens/Screen1_trending.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darzi',
      home: TrendingScreen(),
    );
  }
}

// '/': (context) => TrendingScreen(),
// '/second': (context) => ProductDetail(),
// '/third': (context) => ItemsPreview(),

// FlatButton(
// onPressed: () {
// Navigator.push(context, MaterialPageRoute(
// builder: (context) {
// return ProductDetail();
// },
// ));
// },
// child: Text('Navigator button'))
