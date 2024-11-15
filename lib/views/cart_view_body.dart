import 'package:flutter/material.dart';
import 'package:gorcery/views/custom_cart_view_app_bar.dart';
import 'package:gorcery/widgets/cart_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:  EdgeInsets.only(
            top: 24,
            right: 24,
            left: 24,
          ),
          child:  CustomCartViewAppBar(),
        ),
        const SizedBox(
          height: 40,
        ),
        CartListView(),
      ],
    );
  }
}
