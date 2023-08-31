import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/shop.dart';

void main(){
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        scrollDirection: Axis.vertical,
        children: [
          home_page(),
          shop()
        ]
        ),
    );
  }

}