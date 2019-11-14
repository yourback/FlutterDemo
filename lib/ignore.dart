import 'package:flutter/material.dart';

class PointerEventIgnorePage extends StatefulWidget {
  @override
  _PointerEventIgnoreStatePage createState() => _PointerEventIgnoreStatePage();
}

class _PointerEventIgnoreStatePage extends State<PointerEventIgnorePage> {
  bool _ignore = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('忽略事件'),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          children: <Widget>[
            Switch(
              value: _ignore,
              onChanged: (value) {
                setState(() {
                  _ignore = value;
                });
              },
            ),
            GestureDetector(
              onTap: () => print('GestureDetector Clicked!'),
              child: IgnorePointer(
                ignoring: _ignore,
                child: RaisedButton(
                  onPressed: () => print('IgnorePointer Clicked!'),
                  child: Text('IgnorePointer'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => print('GestureDetector Clicked!'),
              child: AbsorbPointer(
                absorbing: _ignore,
                child: RaisedButton(
                  onPressed: () => print('AbsorbPointer Clicked!'),
                  child: Text('AbsorbPointer'),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                print('hhhh');
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('一个按钮'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
