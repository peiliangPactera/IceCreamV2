import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('not_found_page.title'.tr)),
      body: Center(child: Text('not_found_page.content'.tr)),
    );
  }
}
