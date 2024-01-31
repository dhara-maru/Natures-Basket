import 'package:flutter/material.dart';
import 'package:natures_basket/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.5),
    blurRadius: 1,
    spreadRadius: 1,
    offset: const Offset(1, 1),

  ),
];
Widget iconWidget(IconData icon, bool doExists){


  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: boxShadow,
      shape: BoxShape.circle,
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Icon(icon),
        if(doExists)
          Positioned(
            right: 12,
            top: 15,
            child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
          ))
      ],
    ),
  );
}


Widget priceWidget(String price) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "\$$price",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
         TextSpan(
          text: " /kg",
          style: GoogleFonts.poppins(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
