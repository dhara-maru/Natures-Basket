import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natures_basket/data/data.dart';
import 'package:natures_basket/utils/colors.dart';
import 'package:natures_basket/utils/utils.dart';

class ProductWidget extends StatefulWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.product.color,
      child: Stack(
        children: [

          // image of product
          Align(
            alignment: Alignment.topCenter,
            child: Transform.rotate(
              angle: 2.05 * pi,
              child: Image.network(
                widget.product.image,
                height: 80,
              ),
            ),
          ),

          // heart icon
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: boxShadow,
              ),
              child: Icon(
                Icons.favorite,
                color:
                    widget.product.isSelected == true ? kPrimaryColor : Colors.black38,
                size: 15,
              ),
            ),
          ),


          
          // product details
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  // product based box shadow
                  BoxShadow(
                    color: widget.product.color.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  priceWidget(widget.product.price),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text("See More", style: GoogleFonts.poppins(),),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_upward,
                        color: kPrimaryColor,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}