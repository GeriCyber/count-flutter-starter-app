import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  final TextStyle _textStyle = new TextStyle(fontSize: 20.0);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Flutter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks: ', style: _textStyle),
            Text('$_count', style: _textStyle)
          ],
        )
      ),
      floatingActionButton: _createFloatButtons()
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createFloatButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: () => _onClickFloatButton('reset'),
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () => _onClickFloatButton('remove'),
      ),
      SizedBox(width: 8.0),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _onClickFloatButton('add'),
      ),
    ],);
  }

  void _onClickFloatButton(String buttonType) {
    switch (buttonType) {
      case 'add':
        _count++;
      break;
      case 'remove':
      if (_count > 0) {
        _count--;
      }
      break;
      case 'reset':
        _count = 0;
      break;
      default:
      break;
    }
    setState(() => _count);
  }
}