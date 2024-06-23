import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgSoftGreyBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.mainPadding).copyWith(top: AppDimens.mainPadding),
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            Container(
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
              height: AppDimens.inputHeight,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Искать в Malina",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(AppDimens.inputCircularBorderRadius),
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimens.smallIndent),
            Material(
              color: AppColors.malina,
              borderRadius: const BorderRadius.all(AppDimens.inputCircularBorderRadius),
              child: InkWell(
                borderRadius: const BorderRadius.all(AppDimens.inputCircularBorderRadius),
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: AppDimens.mainPadding),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.document_scanner_rounded,
                        color: AppColors.white,
                        size: 65,
                      ),
                      SizedBox(width: AppDimens.mediumIndent),
                      Expanded(
                        child: Text(
                          "Сканируй QR-код и заказывай прямо в заведении",
                          style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimens.mediumIndent),
            Material(
              child: InkWell(
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: AppDimens.mainPadding),
                      decoration: const BoxDecoration(color: AppColors.orange),
                    ),
                    const Text("Еда"),
                    const Text("Из кафе и ресторанов"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
