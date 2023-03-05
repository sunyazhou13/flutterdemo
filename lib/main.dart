import 'package:flutter/material.dart';

///创建
void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("sunyazhou.com"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30,
            color: Colors.greenAccent
        ),
      ),
    );
  }
}