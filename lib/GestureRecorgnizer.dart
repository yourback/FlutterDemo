import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerPage extends StatefulWidget {
  @override
  _GestureRecognizer createState() {
    // TODO: implement createState
    return new _GestureRecognizer();
  }
}

class _GestureRecognizer extends State<GestureRecognizerPage> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('GestureRecognizer'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(children: [
              TextSpan(
                text: 'Room is not ',
                style: TextStyle(fontSize: 25.0),
              ),
              TextSpan(
                  text: 'built',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  recognizer: _tapGestureRecognizer
                    ..onTap = () {
                      showInSnackBar('bulit:建造');
                    }),
              TextSpan(
                text: " in one day",
                style: TextStyle(fontSize: 25.0),
              )
            ]))
          ],
        ),
      ),
    );
  }

  void showInSnackBar(String s) {
    _scaffoldkey.currentState.showSnackBar(new SnackBar(
        content: new Text(
      s,
      style: TextStyle(fontSize: 25.0),
    )));
  }
}
