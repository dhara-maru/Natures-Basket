import 'dart:async';
import 'package:flutter/material.dart';
import 'package:natures_basket/screens/home_screen.dart';
import 'package:natures_basket/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NATURE'S BASKET",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "First Online",
              style: GoogleFonts.poppins(
                fontSize: 60,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Market",
              style: GoogleFonts.poppins(
                fontSize: 60,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We consistently offer a selection of fresh produce directly from local farmers. Join us in supporting the local !",
              style: GoogleFonts.poppins(
                color: Colors.black,
                height: 1.4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: NetworkImage("https://i.ibb.co/JnTyN63/bg.png"),
              ),
            ),
            Spacer(),
            Column(
              children: [

                SlideAction(
                  outerColor: kPrimaryColor,
                  sliderButtonIcon: Icon(Icons.arrow_forward_ios,
                  size: 20,
                  color: kPrimaryColor,),
                  text: "Swipe to Start",
                  textStyle: GoogleFonts.poppins(fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  ),
                  onSubmit: (){
                    Timer(Duration(milliseconds: 500), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen(),),),);
                  },
                ),
              
              SizedBox(height: 20,),
              RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "HOW TO SUPPORT ",
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: "LOCAL FARMERS",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),),
              ],
            ),


          ],
        ),
      )),
    );
  }
}
