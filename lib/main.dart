import 'package:flutter/material.dart';
import 'package:hero_anims_lists/pages/screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hero Animations',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Screen1(),
    );
  }
}
