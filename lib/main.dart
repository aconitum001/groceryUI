import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/app_router.dart';
import 'package:gorcery/utils/app_theme.dart';

void main() {
  runApp(const Grocery());
}

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: AppRouter.getViews(),
    );
  }
}
