import 'package:flutter/material.dart';
import 'package:gorcery/views/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CartViewBody(),
      ),
    );
  }
}
