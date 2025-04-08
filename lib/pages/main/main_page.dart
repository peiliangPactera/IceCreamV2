import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("夏天"),
        ),
        body: Center(
          child: Container(
            child: Text("冰激凌项目"),
          ),
        ));
  }
}
