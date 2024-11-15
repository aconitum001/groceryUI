import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/models/product_model.dart';

class SearchProductsController extends GetxController {
  RxBool isSearching = false.obs;
  RxList<Product> searchingList = <Product>[].obs;
  final TextEditingController textEditingController = TextEditingController();

  void initSearchingList(List<Product> items) {
    searchingList.clear();
    searchingList.addAll(items); // Initialize the list
  }

  void toggleSearch() {
    isSearching.value = !isSearching.value;
    if (!isSearching.value) {
      textEditingController.clear();
    }
  }

  void searchMethod(String productName, List<Product> originalList) {
    // Use the original list for filtering
    searchingList.value = originalList.where((product) {
      return product.title.toLowerCase().contains(productName.toLowerCase());
    }).toList();
  }

  void dismissKeyboard() {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
  }
}
