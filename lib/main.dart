import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  final String title = "my app";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: title,
      home: new WelcomePage(title: title),
    );
  }
}

class WelcomePage extends StatefulWidget {
  final String title;

  @override
  _WelcomePage createState() {
    // TODO: implement createState
    return _WelcomePage();
  }

  WelcomePage({this.title});
}

class _WelcomePage extends State<WelcomePage> {
  var rBtnName = '你好';

  Stack _stack = new Stack(
    alignment: FractionalOffset(0.5, 0.8),
    children: <Widget>[
      CircleAvatar(
        backgroundImage:
            NetworkImage('https://profile.csdnimg.cn/1/3/4/2_pyh1009'),
        radius: 100.0,
      ),
      Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Colors.red),
        child: Text(
          'hhh···111',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _stack,
      ),
    );
  }
}
