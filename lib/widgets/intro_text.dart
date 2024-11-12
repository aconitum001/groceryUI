import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.07,
          ),
          child: Text(
            "Get your groceries delivered to your home",
            style: AppStyles.style28bold(
              context,
              Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: height * 0.0225,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.09,
          ),
          child: Text(
            "The best delivery app in town for delivering your daily fresh groceries",
            style: AppStyles.style16medium(
              context,
              Theme.of(context).colorScheme.onSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
