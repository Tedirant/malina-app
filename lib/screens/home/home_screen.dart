import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/home/widgets/banner_card.dart';
import 'package:flutter_application_1/screens/home/widgets/button_scanner.dart';
import 'package:flutter_application_1/screens/home/widgets/product_items.dart';
import 'package:flutter_application_1/screens/home/widgets/search_input.dart';

final productItems = <Product>[
  Product(0, "Вакансии", AppColors.product0, 250, "assets/images/0.png"),
  Product(1, "Маркет", AppColors.product1, 700, "assets/images/1.png"),
  Product(2, "Цветы", AppColors.product2, 900, "assets/images/2.png"),
  Product(3, "Еда", AppColors.product3, 1500, "assets/images/3.png"),
  Product(4, "Одежда", AppColors.product4, 800, "assets/images/1.png"),
  Product(5, "Товары", AppColors.product5, 400, "assets/images/2.png"),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.none,
      children: [
        const SearchInput(),
        const SizedBox(height: AppDimens.indent14),
        const ButtonScanner(),
        const SizedBox(height: AppDimens.indent20),
        const BannerCard(
          title: "Еда",
          description: "Из кафе и ресторанов",
          bgColor: AppColors.orange,
          imagePath: "assets/images/food-bg.png",
        ),
        const SizedBox(height: AppDimens.indent20),
        const BannerCard(
          title: "Бьюти",
          description: "Салон красоты и товары",
          bgColor: AppColors.pink,
          imagePath: "assets/images/beauty-bg.png",
        ),
        const SizedBox(height: 30),
        ProductItems(
          productItems,
          title: "Скоро в Malina",
        ),
      ],
    );
  }
}
