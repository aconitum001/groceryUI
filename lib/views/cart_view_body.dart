import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/controllers/cart_controller.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/views/custom_cart_view_app_bar.dart';
import 'package:gorcery/widgets/cart_list_view.dart';
import 'package:gorcery/widgets/custom_button.dart';
import 'package:gorcery/widgets/empty_transaction_widget.dart';

class CartViewBody extends StatelessWidget {
  CartViewBody({super.key});

  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 24,
            right: 24,
            left: 24,
          ),
          child: CustomCartViewAppBar(),
        ),
        const SizedBox(
          height: 40,
        ),
        Obx(
          () => cartController.cartItems.isEmpty
              ? const Expanded(
                  child: EmptyWidget(
                    icon: Icons.shopping_cart_outlined,
                    title: "Your Cart is Empty",
                    subtTitle:
                        "Looks like you haven't added anything to your cart yet. Start shopping now!",
                  ),
                )
              : CartListView(),
        ),
        Obx(
          () => cartController.cartItems.isEmpty
              ? const SizedBox()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomButton(
                        text: "Checkout",
                        onPressed: () {
                          cartController.checkOut();
                          Get.snackbar(
                            "Checkout Successful!",
                            "Your order has been placed successfully. Thank you for shopping with us!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            colorText: Colors.white,
                            borderRadius: 8,
                            isDismissible: true,
                            margin: const EdgeInsets.all(10),
                            duration: const Duration(seconds: 3),
                            icon: const Icon(
                              Icons.check_circle_outlined,
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
