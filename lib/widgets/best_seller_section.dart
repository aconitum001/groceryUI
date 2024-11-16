import 'package:flutter/material.dart';
import 'package:gorcery/widgets/best_seller_grid_view.dart';
import 'package:gorcery/widgets/home_header.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: HomeHeader(
            title: "Best Selling",
          ),
        ),
        SizedBox(
          height: 16,
        ),
        BestSellerGridView(),
      ],
    );
  }
}
