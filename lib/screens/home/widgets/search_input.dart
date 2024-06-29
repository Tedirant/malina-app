import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.darkGrey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      height: AppDimens.height60,
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Искать в Malina",
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(AppDimens.borderRadius12),
          ),
        ),
      ),
    );
  }
}
