import 'package:flutter/material.dart';

void main() => runApp(Pageback());

class Pageback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '返回值测试',
      theme: ThemeData.light(),
      home: PagebackDemo(),
    );
  }
}

class PagebackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页面'),
        centerTitle: true,
      ),
      body: Center(
        child: DiyBtn(),
      ),
    );
  }
}

class DiyBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _jump2find(context);
      },
      child: Text('找小姐姐咯~'),
    );
  }

  _jump2find(BuildContext context) async {
    final result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return XiaoJJ();
    }));

    if (result != null) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('$result'),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: "wocao?",
          onPressed: () {
            print('点击了wocao');
          },
        ),
      ));
    }
  }
}

class XiaoJJ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找小姐姐'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pop(context, "小姐姐1");
            },
            child: Text('小姐姐1'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context, "小姐姐2");
            },
            child: Text('小姐姐2'),
          )
        ],
      ),
    );
  }
}
