import 'package:get/get.dart';
import 'package:gorcery/views/intro_view.dart';
import 'package:gorcery/views/splash_view.dart';

abstract class AppRouter {
  static const String splashView = "/";
  static const String introView = "/intro";

  static List<GetPage<dynamic>>? getViews() {
    return [
      GetPage(
        name: splashView,
        page: () => const SplashView(),
      ),
      GetPage(
        name: introView,
        page: () => const IntroView(),
        transition: Transition.fadeIn,
      ),
    ];
  }
}
