import 'package:flutter/material.dart';
import 'package:natures_basket/data/data.dart';
import 'package:natures_basket/screens/details_screen.dart';
import 'package:natures_basket/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natures_basket/utils/utils.dart';
import 'package:natures_basket/widgets/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            //top container
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: kSecondaryColor,
                  backgroundImage: NetworkImage("https://i.ibb.co/k3nTJrM/maxresdefault.jpg"),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back,", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15),),
                    SizedBox(height: 5,),
                    Text("Sebastian Gomes", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)
                  ],
                ),
                Spacer(),
                //icon widget
                iconWidget(Icons.shopping_bag, true),

              ],
            ),
            SizedBox(height: 30,),

            
              // tagline
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Get your fresh items \n",
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "with ",
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "Nature's Basket",
                          style: GoogleFonts.poppins(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            
            //search bar
            Row(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(

                    color: Colors.white,
                    boxShadow: boxShadow,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search_outlined,
                      size: 25,
                      color: kPrimaryColor,),

                      SizedBox(width: 15,),

                      Text("Search for fruits...", style: 
                      GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                ),
                Spacer(),

                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,

                  ),
                  child: Icon(Icons.filter_alt_off_outlined, color: Colors.white,
                  ),
                )
              ],
            ),

            // category list
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  padding: const EdgeInsets.only(top: 20.0),
                  itemBuilder: (context, index) {
                    // for internal padding of text
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        data[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          color: index == 0 ? kPrimaryColor : Colors.black45,
                          fontWeight:
                              index == 0 ? FontWeight.bold : FontWeight.w400,
                        ),
                      ),
                    );
                  },
                ),
              ),

            // product grid view
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 40,
                ),
                shrinkWrap: true,
                primary: false,
                itemCount: data[0].products!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: data[0].products![index],
                        ),
                      ),
                    ),
                    child: ProductWidget(
                      product: data[0].products![index],
                    ),
                  );
                },
              )
          ],
        ),
      ))
    );
  }
}