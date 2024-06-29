import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottom_navbar/button_title_back.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ButtontitleBack(title: "Избранное"),
      ],
    );
  }
}
