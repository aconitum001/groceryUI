import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/controllers/search_controller.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/categories_grid_view.dart';
import 'package:gorcery/widgets/custom_category_appbar.dart';
import 'package:gorcery/widgets/search_text_field.dart';

class CategoryViewBody extends StatelessWidget {
  final List<Product> items;
  final String title;

  CategoryViewBody({super.key, required this.items, required this.title});

  final SearchProductsController searchController =
      Get.put(SearchProductsController());

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
                  onTap: () {
                    searchController.toggleSearch();
                    searchController.initSearchingList(items);
                    searchController.dismissKeyboard();
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Obx(
                () => AnimatedContainer(
                  height: searchController.isSearching.value ? 50 : 0,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  child: SearchTextField(
                    hint: "Search Product",
                    textEditingController:
                        searchController.textEditingController,
                    onChanged: (value) {
                      searchController.searchMethod(value, items);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: Obx(
            () => CategoriesGridView(
              items: searchController.isSearching.value
                  // ignore: invalid_use_of_protected_member
                  ? searchController.searchingList.value
                  : items,
            ),
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
