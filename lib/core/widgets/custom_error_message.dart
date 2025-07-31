import 'package:flutter/material.dart';
import 'package:gramaz_app/core/utils/styles.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return SnackBar(content: Text(errMessage, style: Styles.textStyle18));
  }
}
