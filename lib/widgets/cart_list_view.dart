import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/controllers/cart_controller.dart';
import 'package:gorcery/widgets/cart_item_widget.dart';

class CartListView extends StatelessWidget {
  CartListView({super.key});
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    List<CartItemWidget> items = cartController.cartItems
        .map(
          (element) => CartItemWidget(
            cartItemModel: element,
          ),
        )
        .toList();
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: items[index],
        ),
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(
          height: 30,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}
