import 'package:english_test/common/app_colors.dart';
import 'package:english_test/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final Function() onTap;

  const ButtonPrimary({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.mainBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 24,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.whiteS20W600,
          ),
        ),
      ),
    );
  }
}
