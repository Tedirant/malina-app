import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_card_provider.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        currentIndex: Provider.of<BottomNavbarProvider>(context, listen: true).selectedIndex,
        onTap: (value) => Provider.of<BottomNavbarProvider>(context, listen: false).setPageIndex(value),
        selectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.malina),
        unselectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        selectedItemColor: AppColors.malina,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.space_dashboard), label: "Лента"),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp), label: "Избранное"),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColors.darkGrey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 0), // changes position of shadow
                  )
                ], color: AppColors.malina, shape: BoxShape.circle),
                padding: const EdgeInsets.all(12),
                child: Icon(
                    Provider.of<BottomNavbarProvider>(context, listen: true).selectedIndex != 0
                        ? Icons.reply
                        : Icons.grid_view_rounded,
                    size: 26,
                    color: Colors.white),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          BottomNavigationBarItem(
              icon: Stack(
                children: [
                  const Icon(Icons.shopping_cart),
                  Provider.of<ShoppingCartProvider>(context, listen: true).cartItems.isNotEmpty
                      ? const Positioned(
                          // draw a red marble
                          top: 0.0,
                          right: 0.0,
                          child: Icon(Icons.brightness_1, size: 8.0, color: AppColors.blue),
                        )
                      : const SizedBox(),
                ],
              ),
              label: "Корзина")
        ],
      ),
    );
  }
}
