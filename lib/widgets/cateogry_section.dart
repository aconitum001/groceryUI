import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/models/category_arguments_model.dart';
import 'package:gorcery/utils/app_router.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/utils/data_dummies.dart';
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
                    arguments: CategoryArgumentsModel(
                      title: "Fruits",
                      items: fruits,
                    ),
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
                onTap: () {
                  Get.toNamed(
                    AppRouter.categoryView,
                    arguments: CategoryArgumentsModel(
                      title: "Vegetables",
                      items: vegetables,
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesCheese,
                title: "Dairy",
                onTap: () {
                  Get.toNamed(
                    AppRouter.categoryView,
                    arguments: CategoryArgumentsModel(
                      title: "Dairy",
                      items: dairyProductList,
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: CategoryWidget(
                image: Assets.assetsImagesMeat,
                title: "Meat",
                onTap: () {
                  Get.toNamed(
                    AppRouter.categoryView,
                    arguments: CategoryArgumentsModel(
                      title: "Meat",
                      items: meatProductList,
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
