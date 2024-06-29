import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

class ButtonScanner extends StatelessWidget {
  const ButtonScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
