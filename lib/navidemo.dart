import 'package:flutter/material.dart';
import 'NavigationBarDemo.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String AppName = 'my app';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: AppName,
      theme: ThemeData.light(),
      home: NavigationBarDemo(),
    );
  }
}

