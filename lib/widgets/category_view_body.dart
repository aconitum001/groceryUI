import 'package:flutter/material.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/categories_grid_view.dart';
import 'package:gorcery/widgets/custom_category_appbar.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 24,
                  right: 24,
                  left: 24,
                ),
                child: CustomCategoryAppbar(
                  title: "Vegetables",
                  icon: Assets.assetsImagesCorn,
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          sliver: CategoriesGridView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
      ],
    );
  }
}
