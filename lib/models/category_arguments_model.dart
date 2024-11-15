import 'package:gorcery/models/product_model.dart';

class CategoryArgumentsModel {
  final String title;
  final List<Product> items;

  CategoryArgumentsModel({
    required this.title,
    required this.items,
  });
}
