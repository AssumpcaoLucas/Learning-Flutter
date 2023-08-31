import 'package:flutter/material.dart';
import 'package:vans_shop/components/drawer_app.dart';
import '../components/bottom_bar.dart';
import '../components/drawer_app.dart';
import 'page1.dart';
import 'page2.dart';


class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {

  //variavel
  int selectIndex = 0;


  //Função
  void changePage(int index){
    setState(() {
      selectIndex = index;
    });
  }

  //Lista
  final List<Widget> pages = [
    page1(),
    page2()
  ];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey.shade700,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: drawerShop(),
      body: pages[selectIndex],
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: myBottomNav(
        onTabChange: (index) => changePage(index),
      ),
    );
  }
}