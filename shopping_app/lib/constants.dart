import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product_models.dart';
import 'package:shopping_app/models/brands.dart';

const defaultPadding = 15.0;
final primaryFontColor = Colors.grey[700];
final secondaryColor = Colors.grey[200];
final thirdColor = Colors.orange[200];

class StaticData {
  static List brands = [
    Brand(name: 'Walton', logo: 'assets/logo/walton-logo.png'),
    Brand(name: 'Samsung', logo: 'assets/logo/samsung.png'),
    Brand(name: 'Apple', logo: 'assets/logo/apple.png'),
    Brand(name: 'Techno', logo: 'assets/logo/'),
    Brand(name: 'Nokia', logo: 'assets/logo/nokia.png'),
    Brand(name: 'Google', logo: 'assets/logo/google.png'),
    Brand(name: 'Casio', logo: 'assets/logo/casio.png'),
    Brand(name: 'Oppo', logo: 'assets/logo/'),

  ];

  static List topBrands = [
    Brand(name: 'Walton', logo: 'assets/logo/walton-logo.png'),
    Brand(name: 'Samsung', logo: 'assets/logo/samsung.png'),
    Brand(name: 'Apple', logo: 'assets/logo/apple.png'),
    Brand(name: 'Nokia', logo: 'assets/logo/nokia.png'),
    Brand(name: 'Google', logo: 'assets/logo/google.png'),
    Brand(name: 'Casio', logo: 'assets/logo/casio.png'),
  ];

  static List categories = ['Smart Phone', 'TV', 'Computer', 'Watch', 'Iron'];

  static List demoProducts = [
    Product(
        name: 'Nokia 101',
        price: '3500 BDT TK',
        discount: '20',
        weight: '300 g',
        brand: 'Nokia',
        category: 'Smart Phone',
        description: 'Good phone',
        imageLink: 'assets/images/product_images/Nokia-105-2019-Pink.jpg'
    ),
    Product(
        name: 'FHD Smart TV 5300',
        price: '35000 BDT TK',
        discount: '7',
        weight: '6.5 Kg',
        brand: 'Samsung',
        category: 'TV',
        description: 'Good TV',
        imageLink: 'assets/images/product_images/samsung.jpg'
    ),
    Product(
        name: 'Apple MacBook pro',
        price: '165000 BDT TK',
        discount: '12',
        weight: '2.5 Kg',
        brand: 'Apple',
        category: 'Computer',
        description: 'Apple MacBook Pro Core i5 8GB RAM 256GB SSD',
        imageLink: 'assets/images/product_images/apple_macbook.jpg'
    ),
    Product(
        name: 'Apple iPhone 13 Pro',
        discount: '10',
        price: '108500 BDT TK',
        weight: '0.3 Kg',
        brand: 'Apple',
        category: 'Smart Phone',
        description: "Display: 6.1″, Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision CPU: Apple A15 Bionic (5 nm) GPU: Apple GPU (5-core graphics) Front Camera: 12 MP, f/2.2, 23mm (wide) Resolution: 1170 x 2532 pixels  RAM: 6GB Rear camera: 12MP (wide) +12MP (ultrawide) + 12MP (telephoto)  Battery: Fast charging 20W",
        imageLink: 'assets/images/product_images/Apple-iPhone-13-Pro-Blue.jpg'
    ),
    Product(
        name: 'CASIO Illuminator Watch',
        price: '7500 BDT TK',
        discount: '25',
        weight: '100 g',
        brand: 'Casio',
        category: 'Watch',
        description: 'Good Watch',
        imageLink: 'assets/images/product_images/casio watch.jpg'
    ),
  ];
}
