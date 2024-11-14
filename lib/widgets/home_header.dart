import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/tapper.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.title,
    required this.img,
  });

  final String title, img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title ",
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Image.asset(
          img,
        ),
        const Spacer(),
        Tapper(
          onTap: () {},
          rippleColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          child: Text(
            "See all",
            style: AppStyles.style14medium(
              context,
              Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
