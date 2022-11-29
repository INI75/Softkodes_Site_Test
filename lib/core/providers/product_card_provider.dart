import 'package:flutter/material.dart';
import 'package:product_site/core/helpers/images.dart';
import 'package:product_site/models/product_card.dart';

class ProductCardProvider extends ChangeNotifier {
  List<ProductCard> products = [
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
    ProductCard(
        title: 'Adidas Converse', image: AppImages.shoe2, price: '\$1200'),
  ];

  List get productList => products;


  
}
