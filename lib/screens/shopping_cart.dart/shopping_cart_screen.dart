import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/widgets/button_order_type.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/widgets/cart_item.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/button_title_back.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  bool inEstablishment = false;
  bool delivery = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ButtontitleBack(title: "Корзина", isCart: true),
        const SizedBox(height: AppDimens.indent14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              borderRadius: const BorderRadius.all(AppDimens.borderRadius20),
              onTap: () => setDeliveryActive(true),
              child: ButtonOrderType(
                text: "Доставка",
                isActive: delivery,
              ),
            ),
            InkWell(
              borderRadius: const BorderRadius.all(AppDimens.borderRadius20),
              onTap: () => setDeliveryActive(false),
              child: ButtonOrderType(text: "В заведении", isActive: inEstablishment),
            ),
          ],
        ),
        const SizedBox(height: AppDimens.indent14),
        //

        Expanded(
          child: Provider.of<ShoppingCartProvider>(context, listen: true).cartItems.isNotEmpty
              ? ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimens.indent20, vertical: AppDimens.indent12),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(AppDimens.borderRadius20),
                        color: AppColors.white,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 6),
                            child: Row(
                              children: [
                                Text(
                                  "Bellagio Coffe",
                                  style: TextStyle(color: AppColors.lightGrey, fontSize: 16),
                                ),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_forward_ios, color: AppColors.lightGrey, size: 12),
                              ],
                            ),
                          ),
                          const Divider(color: Color(0xffEDEBEB), height: 1),
                          const SizedBox(height: AppDimens.indent12),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Provider.of<ShoppingCartProvider>(context, listen: true).cartItems.length,
                            itemBuilder: (context, index) => CartItem(
                                product: Provider.of<ShoppingCartProvider>(context, listen: true).cartItems[index],
                                isLast: index ==
                                    Provider.of<ShoppingCartProvider>(context, listen: true).cartItems.length - 1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20)
                  ],
                )
              : const Center(child: Text("Корзина пуста", style: TextStyle(fontSize: 30))),
        ),
      ],
    );
  }

  //functions
  setDeliveryActive(bool isDeliveryActive) {
    delivery = isDeliveryActive;
    inEstablishment = !isDeliveryActive;
    setState(() {});
  }
}
