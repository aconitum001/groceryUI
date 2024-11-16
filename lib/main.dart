import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/app_router.dart';
import 'package:gorcery/utils/app_theme.dart';
import 'package:gorcery/utils/utils.dart';

void main() {
  registerControllers();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) {
        return const Grocery();
      },
    ),
  );
}

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: '/',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: AppRouter.getViews(),
    );
  }
}
