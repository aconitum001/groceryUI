import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorcery/models/category_arguments_model.dart';
import 'package:gorcery/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CategoryArgumentsModel categoryArgumentsModel = Get.arguments;
    return SafeArea(
      child: Scaffold(
        body: CategoryViewBody(
          title: categoryArgumentsModel.title,
          items: categoryArgumentsModel.items,
        ),
      ),
    );
  }
}
