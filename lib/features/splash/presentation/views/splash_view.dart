import 'package:flutter/material.dart';
import 'package:story_nest/features/splash/presentation/views/widgets/splash_view_body.dart';

import '../../../../constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSplashColor,
      body: SplashViewBody(),
    );
  }
}
