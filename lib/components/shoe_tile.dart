import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shoes{
  final String name;
  final String price;
  final String imagePath;
  final String imageDesc;

  Shoes ({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.imageDesc,
  });
}

class ShoeTile extends StatelessWidget {

  Shoes shoes;
  ShoeTile({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(shoes.imagePath),
              Text(shoes.imageDesc,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoes.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('\$' + shoes.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]
                    ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0)
                  ),
                  color: Colors.black
                ),
                child: IconButton(onPressed: (){},
                 icon: Icon(Icons.add, color: Colors.white,)),
              )
            ],
          )

        ],
      ),
    );
  }
}