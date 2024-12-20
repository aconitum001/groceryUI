import 'package:get/get.dart';
import 'package:gorcery/views/cart_view.dart';
import 'package:gorcery/views/category_view.dart';
import 'package:gorcery/views/main_view.dart';
import 'package:gorcery/views/intro_view.dart';
import 'package:gorcery/views/product_details_view.dart';
import 'package:gorcery/views/splash_view.dart';

abstract class AppRouter {
  static const String splashView = "/";
  static const String introView = "/intro";
  static const String homeView = "/home";
  static const String categoryView = "/category";
  static const String prodcutDetailsView = "/productDetails";
  static const String cartView = "/cart";

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
      GetPage(
        name: homeView,
        page: () => const MainView(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: categoryView,
        page: () => const CategoryView(),
        transition: Transition.size,
      ),
      GetPage(
        name: AppRouter.prodcutDetailsView,
        page: () => const ProductDetailsView(),
        transition: Transition.cupertino,
      ),
      GetPage(
        name: cartView,
        page: () => const CartView(),
        transition: Transition.zoom,
      )
    ];
  }
}
