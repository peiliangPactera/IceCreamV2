import 'package:flutter/material.dart';
import 'package:flutter_waff_skeleton/configs/routes.dart';
import 'package:get/get.dart';

import '../../configs/themes/themes.dart';
import 'main_controller.dart';

class MainPage extends StatelessWidget {
  final _ctrl = Get.put(MainController());

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
