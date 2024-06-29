import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/screens/favourites/favourites_screen.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:flutter_application_1/screens/profile_screen/profile_screen.dart';
import 'package:flutter_application_1/screens/shopping_cart.dart/shopping_cart_screen.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/bottom_navbar.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  static final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const FavouritesScreen(),
    const SizedBox(),
    const ProfileScreen(),
    const ShoppingCartScreen()
  ];

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgSoftGreyBlue,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.indent20).copyWith(top: AppDimens.indent20),
          child: _pages.elementAt(Provider.of<BottomNavbarProvider>(context, listen: true).selectedIndex),
        ),
        bottomNavigationBar: const BottomNavbar(),
      ),
    );
  }
}
