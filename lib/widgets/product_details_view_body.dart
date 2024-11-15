import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/description_section.dart';
import 'package:gorcery/widgets/top_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 380,
            child: ImageSection(product: product),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: DescriptionSection(product: product),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
