import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product_models.dart';

const defaultPadding = 15.0;
final primaryFontColor = Colors.grey[700];
final secondaryColor = Colors.grey[200];
final thirdColor = Colors.orange[200];

class StaticData {
  static List brands = [
    'Wlaton',
    'Samsung',
    'Apple',
    'Techno',
    'Nokia',
    'Google Pixel',
    'Casio',
    'Oppo'
  ];

  static List categories = ['Smart Phone', 'TV', 'Computer', 'Watch', 'Iron'];

  static List demoProducts = [
    Product(
        name: 'Nokia 101',
        price: '3500 BDT TK',
        weight: '300 g',
        brand: 'Nokia',
        category: 'Smart Phone',
        description: 'Good phone',
        imageLink: 'assets/images/product_images/Nokia-105-2019-Pink.jpg'
    ),
    Product(
        name: 'FHD Smart TV 5300',
        price: '35000 BDT TK',
        weight: '6.5 Kg',
        brand: 'Samsung',
        category: 'TV',
        description: 'Good TV',
        imageLink: 'assets/images/product_images/samsung.jpg'
    ),
    Product(
        name: 'FHD Smart TV 5300',
        price: '35000 BDT TK',
        weight: '6.5 Kg',
        brand: 'Samsung',
        category: 'TV',
        description: 'Good TV',
        imageLink: 'assets/images/product_images/samsung.jpg'
    ),
    Product(
        name: 'FHD Smart TV 5300',
        price: '35000 BDT TK',
        weight: '6.5 Kg',
        brand: 'Samsung',
        category: 'TV',
        description: 'Good TV',
        imageLink: 'assets/images/product_images/samsung.jpg'
    ),
    Product(
        name: 'FHD Smart TV 5300',
        price: '35000 BDT TK',
        weight: '6.5 Kg',
        brand: 'Samsung',
        category: 'TV',
        description: 'Good TV',
        imageLink: 'assets/images/product_images/samsung.jpg'
    ),
  ];
}
