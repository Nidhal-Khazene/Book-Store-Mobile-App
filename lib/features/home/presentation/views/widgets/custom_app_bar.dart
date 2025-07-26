import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/core/utils/app_router.dart';
import 'package:gramaz_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.mainLogo, height: 24),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchViewRoute);
            },
            icon: Icon(Icons.search, size: 32, color: kSplashColor),
          ),
        ],
      ),
    );
  }
}
