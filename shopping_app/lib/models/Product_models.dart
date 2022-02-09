import 'package:flutter/material.dart';

class Product {
  String? name;
  String? price;
  String? discount;
  String? weight;
  String? brand;
  String? category;
  String? description;
  String? imageLink;

  Product(
      {this.name,
      this.price,
      this.discount,
      this.weight,
      this.brand,
      this.category,
      this.description,
      this.imageLink});
}
