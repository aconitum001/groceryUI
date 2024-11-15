import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery/utils/app_styles.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({
    super.key,
    required this.subTitle,
    required this.image,
    required this.widget,
  });

  final String subTitle, image;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 35,
            child: SvgPicture.asset(
              image,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget,
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    style: AppStyles.style14medium(
                      context,
                      Theme.of(context).colorScheme.onSecondary,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
