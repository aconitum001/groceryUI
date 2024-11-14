import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/app_bar_button.dart';

class CustomCategoryAppbar extends StatelessWidget {
  const CustomCategoryAppbar({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title, icon;

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
          title,
          style: AppStyles.style20bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Image.asset(icon),
        const Spacer(),
        AppBarButton(
          icon: Assets.assetsImagesMagnifiyingGlass,
          onTap: () {},
        )
      ],
    );
  }
}
