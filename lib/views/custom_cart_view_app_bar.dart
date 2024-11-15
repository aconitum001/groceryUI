import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/app_bar_button.dart';

class CustomCartViewAppBar extends StatelessWidget {
  const CustomCartViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBarButton(
          icon: Assets.assetsImagesArrowBack,
          onTap: () {
            Get.back();
          },
        ),
        const Spacer(),
        Text(
          "Cart ",
          style: AppStyles.style20bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Image.asset(
          Assets.assetsImagesBasket,
        ),
        const Spacer(),
        const SizedBox(
          width: 44,
        )
      ],
    );
  }
}
