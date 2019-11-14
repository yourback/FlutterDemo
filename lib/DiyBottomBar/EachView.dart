import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title;
  String _content;

  EachView(this._title, this._content);

  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._content),
      ),
    );
  }
}
