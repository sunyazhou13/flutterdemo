import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("sunyazhou.com"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListView(
        children: [
          ProductItem("sunyazhou.com A","迈腾大队长 A","https://www.sunyazhou.com/assets/images/20221207RadialGradientlayer/RadialCenter.webp"),
          ProductItem("sunyazhou.com B","迈腾大队长 B","https://www.sunyazhou.com/assets/images/20230205WebpEnhancement/webp3.webp"),
          ProductItem("sunyazhou.com C","迈腾大队长 C","https://www.sunyazhou.com/assets/images/20220701ReverseList/algorithm.webp"),
          ProductItem("sunyazhou.com D","迈腾大队长 D","https://www.sunyazhou.com/assets/images/avatar.jpg"),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget
{
  final String title;
  final String subTitle;
  final String imageURL;

  ProductItem(this.title, this.subTitle, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.cyanAccent,
        ),
      ),
      child: Column(
        children: [
          Text(this.title, style: TextStyle(fontSize: 24),),
          Text(this.subTitle, style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          Image.network(this.imageURL),
        ],
      ),
    );
  }
}