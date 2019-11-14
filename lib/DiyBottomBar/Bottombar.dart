import 'package:flutter/material.dart';
import 'package:myapp/DiyBottomBar/EachView.dart';

class DiyBottomBar extends StatefulWidget {
  @override
  _DiyBottomBarState createState() => _DiyBottomBarState();
}

class _DiyBottomBarState extends State<DiyBottomBar> {
  List<EachView> _pages;

  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pages = List();
    _pages..add(EachView('打印', "这是打印页面"))..add(EachView("打印2", "这是打印2页面"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return EachView('新建', '这是新建页面');
          }));
        },
        tooltip: '悬浮按钮',
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,// 悬浮按钮存在形式
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        shape: CircularNotchedRectangle(),// 底部按钮制造缺口
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              icon: Icon(
                Icons.print,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              icon: Icon(
                Icons.print,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
