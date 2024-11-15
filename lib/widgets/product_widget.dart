import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_router.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_icon_button.dart';

class ProductDisplayWidget extends StatelessWidget {
  const ProductDisplayWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppRouter.prodcutDetailsView,
          arguments: product,
        );
      },
      child: Container(
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
                const SizedBox(
                  height: 36,
                  width: 36,
                  child: CustomIconButton(
                    icon: Icon(
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
      ),
    );
  }
}
