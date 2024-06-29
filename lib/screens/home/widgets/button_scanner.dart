import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';
import 'package:flutter_application_1/services/qr_scanner/qr_scanner.dart';

class ButtonScanner extends StatelessWidget {
  const ButtonScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.malina,
      borderRadius: const BorderRadius.all(AppDimens.borderRadius12),
      child: InkWell(
        borderRadius: const BorderRadius.all(AppDimens.borderRadius12),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QRScanner())),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: AppDimens.indent20),
          child: const Row(
            children: [
              Icon(
                Icons.document_scanner_rounded,
                color: AppColors.white,
                size: 65,
              ),
              SizedBox(width: AppDimens.indent20),
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
