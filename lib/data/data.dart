import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Product>? products;
  const Category({
    required this.name,
    this.products,
  });
}

class Product {
  final String name;
  final String image;
  final String price;
  final bool isSelected;
  final Color color;
  final Color nutrientsColor;
  final List<List<String>> nutrients;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.nutrientsColor,
    required this.color,
    required this.isSelected,
    required this.nutrients,
  });
}

final data = [
  Category(
    name: "Fruits",
    products: [
      Product(
        name: "Apple",
        price: "150",
        nutrientsColor: Colors.red,
        image: "https://i.ibb.co/12QGV3r/apple.png",
        isSelected: true,
        color: Colors.red.shade50,
        nutrients: [
          ['Energy', '3'],
          ['Freshness', '2'],
          ['Vitamin', '4'],
          ['Calories', '1'],
        ],
      ),
      Product(
        name: "Lemon",
        price: "90",
        image: "https://i.ibb.co/DPXxLf4/lime.png",
        isSelected: false,
        nutrientsColor: Colors.yellow,
        color: Colors.yellow.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '3'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Avocado",
        price: "300",
        image: "https://i.ibb.co/SsrKxYg/avocado.png",
        isSelected: false,
        nutrientsColor: Colors.green,
        color: Colors.lightGreen.shade50,
        nutrients: [
          ['Energy', '4'],
          ['Freshness', '2'],
          ['Vitamin', '2'],
          ['Calories', '4'],
        ],
      ),
      Product(
        name: "Grapes",
        price: "70",
        image: "https://i.ibb.co/X85XgZj/grapes.png",
        isSelected: true,
        nutrientsColor: Colors.purple,
        color: Colors.purple.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Bananas",
        price: "50",
        image: "https://i.ibb.co/jhqLgpY/bananas.png",
        isSelected: true,
        nutrientsColor: Colors.yellow,
        color: Colors.yellow.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Blueberry",
        price: "400",
        image: "https://i.ibb.co/tcxM43X/blueberry.png",
        isSelected: true,
        nutrientsColor: Colors.blueGrey,
        color: Colors.blueGrey.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Cherry",
        price: "250",
        image: "https://i.ibb.co/qgV6KDJ/cherry.png",
        isSelected: true,
        nutrientsColor: Colors.red,
        color: Colors.red.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Green Apple",
        price: "60",
        image: "https://i.ibb.co/W2HVkCn/greenapple.png",
        isSelected: true,
        nutrientsColor: Colors.green,
        color: Colors.green.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Mango",
        price: "550",
        image: "https://i.ibb.co/n6wPV01/mango.png",
        isSelected: true,
        nutrientsColor: Colors.orange,
        color: Colors.orange.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Pear",
        price: "90",
        image: "https://i.ibb.co/R9GVxL0/pear.png",
        isSelected: true,
        nutrientsColor: Colors.greenAccent,
        color: Colors.green.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Strawberry",
        price: "100",
        image: "https://i.ibb.co/jMhrHkv/strawberry.png",
        isSelected: true,
        nutrientsColor: Colors.red,
        color: Colors.red.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Orange",
        price: "60",
        image: "https://i.ibb.co/p05DCXT/orange.png",
        isSelected: true,
        nutrientsColor: Colors.deepOrange,
        color: Colors.orange.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      
      Product(
        name: "Watermelon",
        price: "20",
        image: "https://i.ibb.co/xh5S1HQ/watermelon.png",
        isSelected: true,
        nutrientsColor: Colors.red,
        color: Colors.red.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
    ],
  ),
  const Category(name: "Vegetables"),
  const Category(name: "Diary"),
  const Category(name: "Grains"),
  const Category(name: "Meats"),
];
