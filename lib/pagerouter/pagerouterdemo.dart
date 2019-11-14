import 'package:flutter/material.dart';

import 'diyrouter.dart';

void main() {
  return runApp(PageRouterDemo());
}

class PageRouterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '跳转动画',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 100,
          ),
          onPressed: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (BuildContext context) {
//              return SecondPage();
//            }));
            Navigator.of(context)
                .push(MyRouter(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('SecondPage'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 100,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
