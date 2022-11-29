import 'package:flutter/material.dart';
import 'package:product_site/core/helpers/colors.dart';
import 'package:product_site/core/helpers/fonts.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key, required this.function});
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:const BoxConstraints(maxHeight: 42, maxWidth: 150),
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
            maximumSize: MaterialStateProperty.all(const Size(150, 42)),
            backgroundColor: MaterialStateProperty.all(AppColors.dullPink)),
        child: Text(
          'Add to Cart',
          style: Fonts.bodyTextBold.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
