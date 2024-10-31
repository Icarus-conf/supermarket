import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';

class OnBoard extends StatelessWidget {
  static const String routeName = "OnBoard";
  const OnBoard({
    super.key,
    required this.title,
    required this.disc,
    required this.imagePath,
  });

  final String imagePath, title, disc;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.medium,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2,
          sigmaY: 2,
        ),
        child: Container(
          color: Colors.black.withOpacity(0.6),
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                title,
                style: AppTextStyle.textStyle20.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                disc,
                style: AppTextStyle.textStyle14.copyWith(
                  color: Colors.grey[300],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
