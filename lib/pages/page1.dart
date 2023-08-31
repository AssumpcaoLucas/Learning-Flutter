import 'package:flutter/material.dart';
import '../components/shoe_tile.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

List<Shoes> shoesList = [
  Shoes(
    name: "Jordan",
    price: "240",
    imagePath: 'lib/vans_tenis/vans2.jpeg',
    imageDesc: "Cool Shoe"
  ),
  Shoes(
    name: "Zoom Freak",
    price: "236",
    imagePath: 'lib/vans_tenis/vans3.jpeg',
    imageDesc: "SKATE !"
  ),
  Shoes(
    name: "kD Treys",
    price: "240",
    imagePath: 'lib/vans_tenis/vans4.jpeg',
    imageDesc: "Isso é muito Skate"
  ),
  Shoes(
    name: "Aço",
    price: "240",
    imagePath: 'lib/vans_tenis/baixados.jpeg',
    imageDesc: "Coé"
  ),
];

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: Colors.grey[400]),),
                Icon(Icons.search, color: Colors.grey[400],)
              ],
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Novidades",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                ),
                Text("Ver todos",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ) 
                )
              ],
            ),
         ),
         Expanded(
          child: ListView.builder(
            itemCount: shoesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoes shoes1 = shoesList[index];
              return ShoeTile(
                shoes: shoes1,
              );
            }
          )
        ) 
      ],
    );
  }
}