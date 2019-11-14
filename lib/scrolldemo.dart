import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollStatusPage extends StatefulWidget {
  @override
  _ScrollStatusState createState() {
    // TODO: implement createState
    return new _ScrollStatusState();
  }
}

class _ScrollStatusState extends State<ScrollStatusPage> {
  String message = '';

  _onStartScroll(ScrollMetrics metrics) {
    setState(() {
      message = "Scroll Start";
    });
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    message = "Scroll Update";
  }

  _onEndScroll(ScrollMetrics metrics) {
    message = "Scroll End";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NotificationListener'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            color: Colors.green,
            child: Center(
              child: Text(message),
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification) {
                  _onUpdateScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollStartNotification) {
                  _onStartScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollEndNotification) {
                  _onEndScroll(scrollNotification.metrics);
                }
              },
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Index : $index"),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
