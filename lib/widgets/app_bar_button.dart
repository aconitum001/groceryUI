import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery/widgets/tapper.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
  });

  final String icon;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      child: Tapper(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
