import 'package:flutter/material.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.assetsImagesBackgroundImage,
              fit: BoxFit.fill,
            ),
          ),
          const IntroViewBody(),
        ],
      ),
    );
  }
}
