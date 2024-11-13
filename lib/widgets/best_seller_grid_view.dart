import 'package:flutter/material.dart';
import 'package:gorcery/utils/constants.dart';
import 'package:gorcery/widgets/best_seller_widget.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({super.key});

  static List<BestSellerWidget> items = bestSellerList
      .map(
        (product) => BestSellerWidget(product: product),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
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
