import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final Object e;
  final Object? s;

  ErrorPage(this.e, this.s);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('An error occurred'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                e.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Divider(),
              Text(s.toString())
            ]),
      )),
    );
  }
}
