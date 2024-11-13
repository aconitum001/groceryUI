import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        children: [
          Container(
            width: 73,
            height: 73,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: AppStyles.style14medium(
              context,
              Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
