import 'package:flutter/material.dart';

class Shoes {
  final String name;
  final String price;
  final String imagePath;
  final String imageDesc;

  Shoes({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.imageDesc,
  });
}

class CartTile extends StatelessWidget {
  Shoes shoes;
  CartTile({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoes.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('\$ ' + shoes.price)
                ],
              ),
            ),
            Image.asset(shoes.imagePath)
          ],
        ),
      ),
    );
  }
}
