import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = Get.arguments;
    return SafeArea(
      child: Scaffold(
        body: ProductDetailsViewBody(
          product: product,
        ),
      ),
    );
  }
}
