import 'package:flutter/material.dart';
import 'package:product_site/core/helpers/colors.dart';
import 'package:product_site/core/helpers/fonts.dart';
import 'package:product_site/core/helpers/images.dart';
import 'package:product_site/core/helpers/spacers.dart';
import 'package:product_site/widgets/cart_button.dart';

class ProductCardTile extends StatefulWidget {
  const ProductCardTile(
      {super.key,
      required this.title,
      required this.image,
      required this.price});
  final String title;
  final String image;
  final String price;

  @override
  State<ProductCardTile> createState() => _ProductCardTileState();
}

class _ProductCardTileState extends State<ProductCardTile> {
  bool addToCart = false;
  final BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColors.white,
  );
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(
          vertical: addToCart ? 2 : 15.5, horizontal: addToCart ? 1 : 14),
      duration: const Duration(seconds: 1),
      height: addToCart ? 334 : 235,
      width: addToCart ? 264 : 204,
      decoration: decoration,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: addToCart ? 178 : 125,
              width: double.infinity,
              decoration: decoration,
              child: Image.asset(
                AppImages.shoe2,
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  addToCart = !addToCart;
                });
              }),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        heightSpace(20),
                        Text(
                          widget.title,
                          style: Fonts.bodyTextBold,
                        ),
                        heightSpace(20),
                        Text(
                          widget.price,
                          style: Fonts.bodyTextBold,
                        ),
                      ]),
                ),
              ),
            ),
            heightSpace(20),
            addToCart ? CartButton(function: () {}) : Container()
          ],
        ),
      ),
    );
  }
}

class ProductCardPhoneTile extends StatefulWidget {
  const ProductCardPhoneTile(
      {super.key,
      required this.title,
      required this.image,
      required this.price});
  final String title;
  final String image;
  final String price;

  @override
  State<ProductCardPhoneTile> createState() => _ProductCardPhoneTileState();
}

class _ProductCardPhoneTileState extends State<ProductCardPhoneTile> {
  bool addToCart = true;
  final BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColors.white,
  );
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(
          vertical: addToCart ? 15.5 : 2, horizontal: addToCart ? 14 : 1),
      duration: const Duration(seconds: 1),
      height: addToCart ? 221 : 280,
      width: 170,
      decoration: decoration,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 137,
              width: double.infinity,
              decoration: decoration,
              child: Image.asset(
                AppImages.shoe2,
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  addToCart = !addToCart;
                });
              }),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        heightSpace(10),
                        Text(
                          widget.title,
                          style: Fonts.bodyTextBold,
                        ),
                        heightSpace(10),
                        Text(
                          widget.price,
                          style: Fonts.bodyTextBold,
                        ),
                      ]),
                ),
              ),
            ),
            heightSpace(10),
            addToCart ? Container() : CartButton(function: () {})
          ],
        ),
      ),
    );
  }
}
