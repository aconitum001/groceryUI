import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/category_widget.dart';

class CateogrySection extends StatelessWidget {
  const CateogrySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Categories ",
              style: AppStyles.style18bold(
                context,
                Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Image.asset(
              Assets.assetsImagesFaceSavoringFood,
            ),
            const Spacer(),
            Text(
              "See all",
              style: AppStyles.style14medium(
                context,
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
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
