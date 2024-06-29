import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class ButtontitleBack extends StatelessWidget {
  final String title;
  final bool isCart;
  const ButtontitleBack({super.key, required this.title, this.isCart = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Provider.of<BottomNavbarProvider>(context, listen: false).setPageIndex(0),
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () => Provider.of<ShoppingCartProvider>(context, listen: false).clearCart(),
              child: Text(isCart ? "Очистить" : ""))
        ],
      ),
    );
  }
}
