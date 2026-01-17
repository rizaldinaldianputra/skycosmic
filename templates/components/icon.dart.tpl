import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double size;
  final Color? backgroundColor;
  final double borderRadius;
  final VoidCallback? onTap;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.icon,
    this.color,
    this.size = 24.0,
    this.backgroundColor,
    this.borderRadius = 8.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = Icon(
      icon,
      color: color ?? Colors.black,
      size: size,
    );

    if (backgroundColor != null) {
      iconWidget = Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: iconWidget,
      );
    }

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: iconWidget,
      );
    }

    return iconWidget;
  }
}
