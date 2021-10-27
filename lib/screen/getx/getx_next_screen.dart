import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetXNextScreen extends StatelessWidget {
  const GetXNextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('New Page'),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[],
      ),
    );
  }
}
