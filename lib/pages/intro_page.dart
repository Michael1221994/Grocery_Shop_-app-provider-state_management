import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/pages/home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: EdgeInsets.only(left: 80.0, right: 80.0, top: 120), 
            child: Image.asset('lib/images/avocado.png'),
            
          ),

          //We deliver groceries....
           Padding(
            padding:  EdgeInsets.all(24.0),
            child:  Text(
              'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          const Text("Fresh items everyday", style: TextStyle(color: Colors.grey),),

          //spacer
          const Spacer(),
          //get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get Started", style: TextStyle(color: Colors.white),),
            ),
          ),
          const Spacer(),

        ],
        ),
    );
  }
}