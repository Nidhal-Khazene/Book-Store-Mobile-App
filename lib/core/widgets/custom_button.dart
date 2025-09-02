import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.titleColor,
    this.borderRadius,
    this.onPressed,
  });

  final Color backgroundColor;
  final Color titleColor;
  final String title;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
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
