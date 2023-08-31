import 'package:flutter/material.dart';
import '../components/cart_tile.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

List<Shoes> shoesList = [
  Shoes(
      name: "Jordan",
      price: "240",
      imagePath: 'lib/vans_tenis/vans2.jpeg',
      imageDesc: "Cool Shoe"),
  Shoes(
      name: "Zoom Freak",
      price: "236",
      imagePath: 'lib/vans_tenis/vans3.jpeg',
      imageDesc: "SKATE !"),
  Shoes(
      name: "kD Treys",
      price: "240",
      imagePath: 'lib/vans_tenis/vans4.jpeg',
      imageDesc: "Isso é muito Skate"),
  Shoes(
      name: "Aço",
      price: "240",
      imagePath: 'lib/vans_tenis/baixados.jpeg',
      imageDesc: "Coé"),
];

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "Meu Carrinho",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: shoesList.length,
            itemBuilder: (context, index) {
              Shoes shoes1 = shoesList[index];
              return CartTile(shoes: shoes1);
            },
          ),
        )
      ],
    ));
  }
}
