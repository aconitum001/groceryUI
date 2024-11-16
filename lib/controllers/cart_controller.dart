import 'package:get/get.dart';
import 'package:gorcery/models/cart_item_model.dart';
import 'package:gorcery/models/product_model.dart';

class CartController extends GetxController {
  RxList<CartItemModel> cartItems = <CartItemModel>[].obs;

  void addItem(Product product, {int? count}) {
    for (CartItemModel cartItemModel in cartItems) {
      if (cartItemModel.product.title.toLowerCase() ==
          product.title.toLowerCase()) {
        if (count == null) {
          cartItemModel.incrementProductCount();
        } else {
          cartItemModel.productCount += count;
        }
        cartItems.refresh();
        return;
      }
    }
    CartItemModel cartItemModel = CartItemModel(
      product: product,
      productCount: count ?? 1,
    );
    cartItems.add(cartItemModel);
  }

  void removeItem(Product product) {
    for (CartItemModel cartItemModel in cartItems) {
      if (cartItemModel.product.title.toLowerCase() ==
          product.title.toLowerCase()) {
        cartItemModel.decrementProductCount();
        if (cartItemModel.productCount == 0) {
          cartItems.remove(cartItemModel);
        }
        cartItems.refresh();
        return;
      }
    }
  }

  int getProductCount(Product product) {
    for (CartItemModel cartItemModel in cartItems) {
      if (cartItemModel.product.title.toLowerCase() ==
          product.title.toLowerCase()) {
        return cartItemModel.productCount;
      }
    }
    return 0;
  }

  void checkOut() {
    cartItems.clear();
  }
}
