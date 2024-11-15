import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/app_bar_button.dart';

class ProductDetailsAppbar extends StatelessWidget {
  const ProductDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarButton(
          icon: Assets.assetsImagesArrowBack,
          color: Theme.of(context).colorScheme.surface,
          onTap: () {
            Get.back();
          },
        ),
        AppBarButton(
          icon: Assets.assetsImagesMagnifiyingGlass,
          color: Theme.of(context).colorScheme.surface,
          onTap: () {},
        )
      ],
    );
  }
}
