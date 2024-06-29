import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  final int id;
  final int qty;
  const Counter({super.key, required this.qty, required this.id});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Provider.of<ShoppingCartProvider>(context, listen: false).decreaseItem(widget.id),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.bgSoftGreyBlue,
            ),
            child: const Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            widget.qty.toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        InkWell(
          onTap: () => Provider.of<ShoppingCartProvider>(context, listen: false).increaseItem(widget.id),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.bgSoftGreyBlue,
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
