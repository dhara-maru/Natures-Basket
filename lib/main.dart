import 'package:flutter/material.dart';
import 'package:natures_basket/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nature's Basket",
      home: IntroScreen(),
    );
  }
}