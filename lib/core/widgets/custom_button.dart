import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.titleColor,
    this.borderRadius,
  });

  final Color backgroundColor;
  final Color titleColor;
  final String title;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: titleColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
