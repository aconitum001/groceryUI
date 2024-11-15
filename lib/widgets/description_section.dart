import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_button.dart';
import 'package:gorcery/widgets/product_info_grid_view.dart';
import 'package:gorcery/widgets/title_and_counter_widget.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleAndCounterWidget(product: product),
        const SizedBox(
          height: 6,
        ),
        Text(
          "${product.amount}kg, ${product.price}\$",
          style: AppStyles.style20bold(
            context,
            Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          product.desc,
          style: AppStyles.style16medium(
            context,
            Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        ProductInfoGridView(product: product),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 53,
          child: CustomButton(
            text: "Add to cart",
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
