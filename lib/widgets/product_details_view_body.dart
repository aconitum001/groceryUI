import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/description_section.dart';
import 'package:gorcery/widgets/top_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 400,
            child: ImageSection(product: product),
          ),
          SizedBox(
            height: 450,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: DescriptionSection(product: product),
            ),
          )
        ],
      ),
    );
  }
}
