import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  final String title;
  final List<Product> productItems;
  const ProductItems(this.productItems, {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: AppDimens.indent14),
        SizedBox(
          height: 86,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: productItems.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductItem(productItems[index]);
            },
          ),
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Provider.of<ShoppingCartProvider>(context, listen: false).addItem(product),
      child: Container(
        height: 86,
        width: 86,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            AppDimens.borderRadius12,
          ),
          color: product.color,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.indent12,
          vertical: AppDimens.indent14 / 2,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            product.title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
