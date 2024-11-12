import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 11,
        leading: Container(
          clipBehavior: Clip.antiAlias,
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Assets.assetsImagesAvatar,
            alignment: Alignment.bottomCenter,
          ),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            "Good Morning",
            style: AppStyles.style12medium(
              context,
              Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: AppStyles.style16medium(
              context,
              Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        trailing: Container(
          width: 115,
          height: 44,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(70),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  Assets.assetsImagesMarker,
                ),
                Text(
                  "My Flat",
                  style: AppStyles.style12medium(
                    context,
                    Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                Transform.rotate(
                  angle: -pi / 2,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 10,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
