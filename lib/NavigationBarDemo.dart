import 'package:flutter/material.dart';
import 'package:myapp/pages/add_screen.dart';
import 'package:myapp/pages/del_screen.dart';
import 'package:myapp/pages/message_screen.dart';
import 'package:myapp/pages/people_screen.dart';

class NavigationBarDemo extends StatefulWidget {
  @override
  _NavigationBarDemoState createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {
  final Color _BottomNavigationBarColor = Colors.lightBlue;

  List<Widget> _pages = List();

  @override
  void initState() {
    _pages
      ..add(AddScreen())
      ..add(DelScreen())
      ..add(MessageScreen())
      ..add(PeopleScreen());
    super.initState();
  }

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: _BottomNavigationBarColor,
            ),
            title: Text(
              '添加',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              color: _BottomNavigationBarColor,
            ),
            title: Text(
              '删除',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: _BottomNavigationBarColor,
            ),
            title: Text(
              '消息',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.nature,
              color: _BottomNavigationBarColor,
            ),
            title: Text(
              '自然',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
