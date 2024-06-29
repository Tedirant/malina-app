import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

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
        const SizedBox(height: AppDimens.smallIndent),
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
  final Product model;
  const ProductItem(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 86,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          AppDimens.inputCircularBorderRadius,
        ),
        color: model.color,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.smallPadding,
        vertical: AppDimens.mediumPadding / 2,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          model.title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final Color color;

  Product(this.title, this.color);
}
