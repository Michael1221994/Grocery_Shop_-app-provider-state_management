import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
          ),
        ),
      body: Consumer<CartModel>(
        builder:(context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("My Cart",
          style: GoogleFonts.notoSerif(
            fontSize: 36,
            fontWeight: FontWeight.bold
          ),
          ),
        ), 
          // Either show empty message or list of cart items
              value.cartItems.isEmpty
                  ? const Expanded(
                      child: Center(
                        child: Text(
                          "Cart is empty...",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
            :Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                padding: EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        leading: Image.asset(value.cartItems[index][2], height: 36,),
                        title: Text(value.cartItems[index][0]),
                        subtitle: Text("\$"+value.cartItems[index][1]),
                        trailing: IconButton(
                          onPressed: () => Provider.of<CartModel>(context, listen: false).removeItemFromCart(index),
                          icon: const Icon(
                            Icons.cancel
                          )
                          ),
                      ),
                    ),
                  );
                }
                 ) 
              ),

              //total price + pay now button
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price", style: TextStyle(color: Colors.green[100] ),),
                          Text(value.calculateTotal(), style: TextStyle(
                            color: Colors.white,
                             fontSize: 18,
                              fontWeight: FontWeight.bold),
                              ),
                    ]
                    ),

                    //pay now button
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade100),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Text("Pay now",
                          style: TextStyle(color: Colors.white),
                          ),

                          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                        ],
                      ),
                     
                    )
                              ]
                              ),

                       
                      ),
                      
                    
                  ),
          ],
              );
        }
        )
        );
        }
        
     
  }
