import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/views/splash_view.dart';

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
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashView(),
        ),
      ],
    );
  }
}
