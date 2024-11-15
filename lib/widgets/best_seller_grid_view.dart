import 'package:flutter/material.dart';
import 'package:gorcery/utils/data_dummies.dart';
import 'package:gorcery/widgets/product_widget.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({super.key});

  static List<ProductDisplayWidget> items = bestSellerList
      .map(
        (product) => ProductDisplayWidget(product: product),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163 / 214,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => items[index],
        itemCount: items.length,
      ),
    );
  }
}
