import 'package:flutter/material.dart';

import 'package:gorcery/utils/data_dummies.dart';
import 'package:gorcery/widgets/best_seller_widget.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  static final List<ProductDisplayWidget> items = vegetables
      .map(
        (e) => ProductDisplayWidget(product: e),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => items[index],
    );
  }
}
