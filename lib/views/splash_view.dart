import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/widgets/splash_view_body.dart';

import '../utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed(AppRouter.introView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: const SplashViewBody(),
    );
  }
}
