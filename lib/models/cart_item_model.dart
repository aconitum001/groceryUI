import 'package:gorcery/models/product_model.dart';

class CartItemModel {
  final Product product;
  int productCount;

  CartItemModel({
    required this.product,
    required this.productCount,
  });

  void incrementProductCount() {
    productCount++;
  }

  void decrementProductCount() {
    productCount--;
  }
}
