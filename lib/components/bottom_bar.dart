import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myBottomNav extends StatelessWidget {

  void Function(int) onTabChange;

  myBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 16,
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange(value),
          

          tabs: [
          GButton(icon: Icons.home, text: "Shop",),
          GButton(icon: Icons.shopping_bag_rounded, text: "Cart",)

        ]),
      )

    );
  }
}