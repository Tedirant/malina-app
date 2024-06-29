import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/widgets/counter.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final bool isLast;
  final Product product;
  const CartItem({super.key, required this.isLast, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(AppDimens.borderRadius12),
                    color: AppColors.softGreyBlue,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(product.imagePath),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Том ям",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Пицца с соусом том ям 230 гр",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Counter(id: product.id, qty: product.quantity),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${product.price} C",
                          textAlign: TextAlign.end,
                        ),
                        InkWell(
                          onTap: () => Provider.of<ShoppingCartProvider>(context, listen: false).removeItem(product.id),
                          child: const Icon(
                            Icons.delete,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        isLast
            ? Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: AppColors.malina,
                  borderRadius: BorderRadius.all(AppDimens.borderRadius12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Заказать",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "${Provider.of<ShoppingCartProvider>(context, listen: false).getSum().toString()} C",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
