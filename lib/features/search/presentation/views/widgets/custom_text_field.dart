import 'package:gramaz_app/constants.dart';
import 'package:flutter/material.dart';

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
