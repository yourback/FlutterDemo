import 'package:flutter/material.dart';
import 'Bottombar.dart';
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '自定义底部按钮',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiyBottomBar(),
    );
  }
}
