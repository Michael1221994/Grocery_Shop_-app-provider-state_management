import 'package:flutter/material.dart';


class GroceryItemTile extends StatelessWidget {

  final String itemname;
  final String itemprice;
  final String imagepath;
  final color;
  const GroceryItemTile({
    super.key,
    required this.itemname,
    required this.itemprice,
    required this.imagepath,
    required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
      ),
    );
  }
}