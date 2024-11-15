import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/controllers/cart_controller.dart';
import 'package:gorcery/models/cart_item_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_icon_button.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget({
    super.key,
    required this.cartItemModel,
  });

  final CartItemModel cartItemModel;
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 42,
          child: Image.asset(
            cartItemModel.product.image,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 10,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItemModel.product.title,
                  style: AppStyles.style16bold(
                    context,
                    Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "${cartItemModel.product.amount}kg, ${cartItemModel.product.price}\$",
                  style: AppStyles.style16bold(
                    context,
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: CustomIconButton(
            color: Theme.of(context).colorScheme.secondaryContainer,
            icon: Icon(
              Icons.remove,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            onTap: () {
              cartController.removeItem(cartItemModel.product);
            },
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          cartItemModel.productCount.toString(),
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: CustomIconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onTap: () {
              cartController.addItem(cartItemModel.product);
            },
          ),
        ),
      ],
    );
  }
}
