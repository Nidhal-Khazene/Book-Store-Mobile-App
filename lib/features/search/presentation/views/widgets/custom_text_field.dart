import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gramaz_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        hintStyle: TextStyle(color: kSplashColor),
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 32, color: kSplashColor),
          ),
        ),
        prefixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, size: 32, color: kSplashColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: kSplashColor),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
