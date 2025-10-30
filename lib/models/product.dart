import 'dart:ui';

import 'package:tortoise_assignment/models/brand.dart';
import 'package:tortoise_assignment/models/price.dart';
import 'package:tortoise_assignment/models/spec.dart';

class Product {
  final Brand brandID;
  final String productName;
  final String productAssets;
  final List<Color> colors;
  final List<int> space;
  final List<Spec> specifications;
  final Price price;
  final String shippingDetails;

  Product({
    required this.brandID,
    required this.productName,
    required this.productAssets,
    required this.colors,
    required this.space,
    required this.specifications,
    required this.price,
    required this.shippingDetails,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      brandID: Brand.fromJson(json['brandID']),
      productName: json['productName'],
      productAssets: json['productAssets'],
      colors: (json['colors'] as List<dynamic>)
          .map((colorValue) => Color(int.parse(colorValue)))
          .toList(),
      space: List<int>.from(json['space']),
      specifications: (json['specifications'] as List<dynamic>)
          .map((spec) => Spec.fromJson(spec))
          .toList(),
      price: Price.fromJson(json['price']),
      shippingDetails: json['shippingDetails'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'brandID': brandID.toJson(),
      'productName': productName,
      'productAssets': productAssets,
      'colors': colors.map((c) => c.value.toString()).toList(),
      'space': space,
      'specifications': specifications.map((s) => s.toJson()).toList(),
      'price': price.toJson(),
      'shippingDetails': shippingDetails,
    };
  }
}