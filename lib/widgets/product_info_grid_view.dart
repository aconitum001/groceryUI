import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/product_info_widget.dart';

class ProductInfoGridView extends StatelessWidget {
  const ProductInfoGridView({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    List<ProductInfoWidget> items = [
      ProductInfoWidget(
        widget: Text(
          "${product.organicPercentage}%",
          style: AppStyles.style16bold(
            context,
            Theme.of(context).colorScheme.primary,
          ),
        ),
        subTitle: "Organic",
        image: Assets.assetsImagesLotus,
      ),
      ProductInfoWidget(
        widget: Text(
          "${product.expiration} Year",
          style: AppStyles.style16bold(
            context,
            Theme.of(context).colorScheme.primary,
          ),
        ),
        subTitle: "Expiration",
        image: Assets.assetsImagesCalender,
      ),
      ProductInfoWidget(
        widget: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: product.reviews.toString(),
                style: AppStyles.style16bold(
                  context,
                  Theme.of(context).colorScheme.primary,
                ),
              ),
              TextSpan(
                text: " (${product.numberOfReviews})",
                style: AppStyles.style12medium(
                  context,
                  Theme.of(context).colorScheme.onSecondary,
                ),
              )
            ],
          ),
        ),
        subTitle: "Reviews",
        image: Assets.assetsImagesStar,
      ),
      ProductInfoWidget(
        widget: Text(
          "${product.cal} Cal",
          style: AppStyles.style16bold(
            context,
            Theme.of(context).colorScheme.primary,
          ),
        ),
        subTitle: "100 Gram",
        image: Assets.assetsImagesDrop,
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 67,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => items[index],
    );
  }
}
