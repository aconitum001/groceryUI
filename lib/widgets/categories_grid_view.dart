import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/product_widget.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key, required this.items});

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    final List<ProductDisplayWidget> productsList = items
        .map(
          (e) => ProductDisplayWidget(product: e),
        )
        .toList();
    return SliverGrid.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => productsList[index],
    );
  }
}
