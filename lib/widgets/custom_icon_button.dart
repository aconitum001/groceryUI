import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.icon,
    this.color,
    this.onTap,
  });

  final Widget? icon;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
      ),
      icon: FittedBox(
        fit: BoxFit.scaleDown,
        child: icon,
      ),
    );
  }
}
