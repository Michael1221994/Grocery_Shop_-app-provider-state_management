import 'package:flutter/material.dart';


class GroceryItemTile extends StatelessWidget {

  final String itemname;
  final String itemprice;
  final String imagepath;
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemname,
    required this.itemprice,
    required this.imagepath,
    required this.color,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12)
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              //image
            Image.asset(
              imagepath,
              //color: Colors.transparent,
              height: 64,
              ),
      
            //itemname
            Text(itemname),
      
            //price +button
            MaterialButton(
              color: color[800],
              onPressed: onPressed,
              child: Text(
                "\$"+itemprice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
              
              
              )
          ]
          
        ),
      ),
    );
  }
}