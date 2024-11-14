import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/app_router.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/category_widget.dart';
import 'package:gorcery/widgets/home_header.dart';

class CateogrySection extends StatelessWidget {
  const CateogrySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeHeader(
          title: 'Categories',
          img: Assets.assetsImagesFaceSavoringFood,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesApple,
                title: "Fruits",
                onTap: () {
                  Get.toNamed(
                    AppRouter.categoryView,
                  );
                },
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesBroccoli,
                title: "Vegetables",
                onTap: () {},
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesCheese,
                title: "Diary",
                onTap: () {},
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesMeat,
                title: "Meat",
                onTap: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
