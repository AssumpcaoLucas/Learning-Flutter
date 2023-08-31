import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/shoes_image/vans_wall.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('lib/shoes_image/vans2.png'),
                Column(
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.white,
                    ),
                    Text(
                      "Arrasta pra cima",
                      style: GoogleFonts.merriweather(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
        ),
    );
  }
}