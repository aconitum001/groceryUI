import 'package:flutter/material.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/category_widget.dart';
import 'package:gorcery/widgets/home_header.dart';

class CateogrySection extends StatelessWidget {
  const CateogrySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeHeader(
          title: 'Categories',
          img: Assets.assetsImagesFaceSavoringFood,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesApple,
                title: "Fruits",
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesBroccoli,
                title: "Vegetables",
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesCheese,
                title: "Diary",
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesMeat,
                title: "Meat",
              ),
            ),
          ],
        )
      ],
    );
  }
}
