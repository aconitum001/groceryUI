import 'dart:math';

import 'package:get/get.dart';
import 'package:gorcery/controllers/cart_controller.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/data_dummies.dart';

void registerControllers() {
  Get.put(CartController());
}

List<Product> generateRandomBestSellerList() {
  Random random = Random();
  
  List<List<Product>> allLists = [vegetables, fruits, dairyProductList, meatProductList];
  List<Product> bestSellerList = [];
  
  for (int i = 0; i < 4; i++) {
    List<Product> selectedList = allLists[random.nextInt(allLists.length)];
    Product randomProduct = selectedList[random.nextInt(selectedList.length)];
    bestSellerList.add(randomProduct);
  }
  
  return bestSellerList;
}
