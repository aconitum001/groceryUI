import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/tapper.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  final String image;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tapper(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Container(
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
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
