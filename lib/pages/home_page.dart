import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/components/grocery_item_tile.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:grocery_shop_app/pages/cart_page.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())),
        child: const Icon(Icons.shopping_cart, color: Colors.white,),),
      body: SafeArea(
        child: Column(
          children: [
          const SizedBox(height: 48,),
          //good morning 
           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning"),
            ),
          
          const SizedBox(height: 4,),
        
        
          //lets order fresh items for you
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Let's order fresh items for you",
            style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
            ),
            )
            
          ),

          const SizedBox(
            height: 10,
          ),
        
          //divider
        const Padding(
          padding:  EdgeInsets.all(24.0),
          child: Divider(),
        ),

        const SizedBox( height: 24,),
        
        //fresh items
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Fresh Items",
          style: GoogleFonts.notoSerif(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),
        ),  
        
        //fresh items + grid
        Expanded(
          child: Consumer<CartModel>(
            builder: (context, value, child) {
              return  GridView.builder(  // gridview ??
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 /1.3, //HERE!! WAGWAN
                ),
              itemBuilder: (context, index){
                return  GroceryItemTile(
                  itemname: value.shopItems[index][0],
                  itemprice: value.shopItems[index][1],
                  imagepath: value.shopItems[index][2],
                  color: value.shopItems[index][3],
                  onPressed: () =>
                    Provider.of<CartModel>(context, listen: false).addItemToCart(index)
                  ,
                );
              
             } 
              );
            },
            
          )
          
          )
        
          ],
        ),
      ),
    );
  }
}