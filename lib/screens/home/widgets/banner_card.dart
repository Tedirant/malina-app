import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_dimens.dart';

class BannerCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color bgColor;
  const BannerCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            top: AppDimens.verticalPadding,
            left: AppDimens.bigPadding,
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(AppDimens.inputCircularBorderRadius),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: const BorderRadius.all(AppDimens.inputCircularBorderRadius),
                child: Image.asset(
                  imagePath,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
