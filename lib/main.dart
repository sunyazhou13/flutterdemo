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

class ContentWidget extends StatefulWidget
{
  ContentWidget(){
    print("ContentWidget构造函数被调用");
  }
   @override
  State<StatefulWidget> createState() {
     print("createState被调用");
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget>
{
  int counter = 0;
  ContentWidgetState()
  {
    print("ContentWidgetState构造函数被调用");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("ContentWidgetState的 initState被调用");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ContentWidgetState的 didChangeDependencies被调用");
  }

  @override
  void didUpdateWidget(covariant ContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetState的 didUpdateWidget被调用");
  }

  @override
  Widget build(BuildContext context) {
    print("ContentWidgetState的 build被调用");
    return Center(
        child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
             setState(() {
               counter++;
             });
          }, child: Text("计数+1")),
          Text("hello world $counter", style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
