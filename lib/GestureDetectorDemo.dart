import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  _GestureDetectorState createState() => new _GestureDetectorState();
}




class _GestureDetectorState extends State<GestureDetectorPage> {
  String _opName = '未检测到操作';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector手势识别'),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 240.0,
            height: 120.0,
            child: Text(
              _opName,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => _showEventText("Tap"),
          onTapUp: (e) => _showEventText("onTapUp"),
          onTapDown: (e) => _showEventText("onTapDown"),
          onTapCancel: () => _showEventText("onTapCancel"),
          onDoubleTap: () => _showEventText("onDoubleTap"),
          onLongPress: () => _showEventText("onLongPress"),
          onVerticalDragDown: (e) => _showEventText("onVerticalDragDown"),
          onVerticalDragStart: (e) => _showEventText("onVerticalDragStart"),
          onVerticalDragUpdate: (e) => _showEventText("onVerticalDragUpdate"),
          onVerticalDragEnd: (e) => _showEventText("onVerticalDragEnd"),
          onVerticalDragCancel: () => _showEventText("onVerticalDragCancel"),
          onHorizontalDragDown: (e) => _showEventText("onHorizontalDragDown"),
          onHorizontalDragStart: (e) => _showEventText("onHorizontalDragStart"),
          onHorizontalDragUpdate: (e) =>
              _showEventText("onHorizontalDragUpdate"),
          onHorizontalDragEnd: (e) => _showEventText("onHorizontalDragEnd"),
          onHorizontalDragCancel: () =>
              _showEventText("onHorizontalDragCancel"),
        ),
      ),
    );
  }

  void _showEventText(String s) {
    setState(() {
      _opName = s;
    });
    print(_opName);
  }
}
