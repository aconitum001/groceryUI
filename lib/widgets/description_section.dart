import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/controllers/cart_controller.dart';
import 'package:gorcery/controllers/product_counter_controller.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_button.dart';
import 'package:gorcery/widgets/product_info_grid_view.dart';
import 'package:gorcery/widgets/title_and_counter_widget.dart';

class DescriptionSection extends StatelessWidget {
  DescriptionSection({super.key, required this.product});

  final Product product;

  final CartController cartController = Get.find();

  final ProductCounterController productCounterController =
      Get.put(ProductCounterController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(
          () => TitleAndCounterWidget(
            product: product,
            decrement: productCounterController.decrementCounter,
            increment: productCounterController.incrementCounter,
            counter: productCounterController.counter.value,
          ),
        ),
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
            onPressed: () {
              if (productCounterController.counter.value > 0) {
                cartController.addItem(
                  product,
                  count: productCounterController.counter.value,
                );
                Get.snackbar(
                  "Products Added to Cart!",
                  "${productCounterController.counter.value}x ${product.title} added to your cart. Keep shopping or checkout!", // Message content
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  colorText: Colors.white,
                  borderRadius: 8,
                  margin: const EdgeInsets.all(10),
                  duration: const Duration(seconds: 2),
                  showProgressIndicator: true,
                  isDismissible: true,
                  icon: const Icon(
                    Icons.check_circle_outlined,
                    color: Colors.white,
                  ),
                );
                productCounterController.counter.value = 1;
              }
            },
          ),
        )
      ],
    );
  }
}
