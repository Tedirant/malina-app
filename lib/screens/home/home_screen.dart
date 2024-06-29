import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/screens/home/widgets/banner_card.dart';
import 'package:flutter_application_1/screens/home/widgets/button_scanner.dart';
import 'package:flutter_application_1/screens/home/widgets/product_items.dart';
import 'package:flutter_application_1/screens/home/widgets/search_input.dart';

final productItems = <Product>[
  Product("Вакансии", AppColors.product0),
  Product("Маркет", AppColors.product1),
  Product("Цветы", AppColors.product2),
  Product("Еда", AppColors.product3),
  Product("Одежда", AppColors.product4),
  Product("Товары", AppColors.product5),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.none,
      children: [
        const SearchInput(),
        const SizedBox(height: AppDimens.smallIndent),
        const ButtonScanner(),
        const SizedBox(height: AppDimens.mediumIndent),
        const BannerCard(
          title: "Еда",
          description: "Из кафе и ресторанов",
          bgColor: AppColors.orange,
          imagePath: "assets/images/food-bg.png",
        ),
        const SizedBox(height: AppDimens.mediumIndent),
        const BannerCard(
          title: "Бьюти",
          description: "Салон красоты и товары",
          bgColor: AppColors.pink,
          imagePath: "assets/images/beauty-bg.png",
        ),
        const SizedBox(height: AppDimens.bigIndent),
        ProductItems(
          productItems,
          title: "Скоро в Malina",
        ),
      ],
    );
  }
}
