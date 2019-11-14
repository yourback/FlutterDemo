import 'dart:math';

import 'package:flutter/material.dart';

class DragPage extends StatefulWidget {
  @override
  _DragPageState createState() => new _DragPageState();
}

class _DragPageState extends State<DragPage>
    with SingleTickerProviderStateMixin {
  double _top = 0.0;
  double _left = 0.0;
  double _size = 100.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('DragPage')),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: FlutterLogo(
                size: _size,
              ),
//              onPanUpdate: (e) {
//                setState(() {
//                  _left += e.delta.dx;
//                  _top += e.delta.dy;
//                });
//              },
              onScaleUpdate: (e) {
                setState(() {
                  _size = 300 * e.scale.clamp(.5, 10);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
