import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/categories_grid_view.dart';
import 'package:gorcery/widgets/custom_category_appbar.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.items, required this.title});

  final List<Product> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  right: 24,
                  left: 24,
                ),
                child: CustomCategoryAppbar(
                  title: title,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          sliver: CategoriesGridView(
            items: items,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
      ],
    );
  }
}
