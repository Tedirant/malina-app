import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/widgets/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        currentIndex: context.watch<BottomNavbarProvider>().selectedIndex,
        onTap: (value) => context.read<BottomNavbarProvider>().setPageIndex(value),
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
                child: const Icon(Icons.grid_view_rounded, size: 26, color: Colors.white),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Корзина")
        ],
      ),
    );
  }
}
