import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gorcery/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 110,
        height: 110,
        padding: const EdgeInsets.only(right: 24, left: 18),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(Assets.assetsImagesLogo),
      ),
    );
  }
}
