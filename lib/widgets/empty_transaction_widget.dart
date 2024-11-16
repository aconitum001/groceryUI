import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtTitle,
  });

  final IconData icon;
  final String title, subtTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Icon(
          icon,
          size: 100,
          color: Theme.of(context).colorScheme.onSecondaryContainer,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: AppStyles.style20bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            subtTitle,
            textAlign: TextAlign.center,
            style: AppStyles.style16medium(
              context,
              Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
