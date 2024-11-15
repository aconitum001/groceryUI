import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';

class ProductDisplayWidget extends StatelessWidget {
  const ProductDisplayWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 12,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 10,
            child: Image.asset(
              product.image,
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          Text(
            product.title,
            style: AppStyles.style14bold(
              context,
              Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "${product.amount}kg, ${product.price}\$",
                    style: AppStyles.style16bold(
                      context,
                      Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
