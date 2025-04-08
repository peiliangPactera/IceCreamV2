import 'package:IceCream/pages/main/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Flutter应用的唯一入口
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '夏天应用',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(), // 这里设置MainPage为首页
      debugShowCheckedModeBanner: false,
    );
  }
}