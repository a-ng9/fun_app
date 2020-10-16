import 'package:flutter/material.dart';

import 'package:fun_app/counterPage.dart';
import 'package:fun_app/screens/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        CounterPage.id: (context) => CounterPage(),
      },
    );
  }
}
