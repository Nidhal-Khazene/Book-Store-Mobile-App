import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.mainLogo, height: 24),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchViewRoute);
            },
            icon: const Icon(Icons.search, size: 32, color: kSplashColor),
          ),
        ],
      ),
    );
  }
}
