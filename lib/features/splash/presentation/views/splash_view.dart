import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: kSplashColor, body: SplashViewBody());
  }
}
