import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

class ButtonOrderType extends StatelessWidget {
  final String text;
  final bool isActive;
  const ButtonOrderType({super.key, required this.text, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width / 2 - 40,
      decoration: BoxDecoration(
        color: isActive ? AppColors.malina : Colors.transparent,
        borderRadius: const BorderRadius.all(AppDimens.borderRadius20),
        border: isActive ? Border.all(width: 0) : Border.all(width: 1, color: const Color(0xffEDEBEB)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isActive ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}
