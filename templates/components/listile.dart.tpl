import 'package:flutter/material.dart';

enum CosmicListTileType {
  primary,
  secondary,
  info,
  success,
  warning,
  danger,
  light,
  dark,
  cosmicBlue,
  cosmicOrange,
}

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final CosmicListTileType type;
  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Widget? subtitle;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const SkyCosmic{{ComponentName}}({
    super.key,
    this.type = CosmicListTileType.primary,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderRadius = 12,
  });

  LinearGradient _getGradientByType(CosmicListTileType type) {
    switch (type) {
      case CosmicListTileType.primary:
        return const LinearGradient(
          colors: [Color(0xFF2196F3), Color(0xFF64B5F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.secondary:
        return const LinearGradient(
          colors: [Color(0xFF9E9E9E), Color(0xFFBDBDBD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.info:
        return const LinearGradient(
          colors: [Color(0xFF00BCD4), Color(0xFF26C6DA)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.success:
        return const LinearGradient(
          colors: [Color(0xFF4CAF50), Color(0xFF81C784)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.warning:
        return const LinearGradient(
          colors: [Color(0xFFFFC107), Color(0xFFFFD54F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.danger:
        return const LinearGradient(
          colors: [Color(0xFFF44336), Color(0xFFE57373)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.light:
        return const LinearGradient(
          colors: [Color(0xFFF5F5F5), Color(0xFFE0E0E0)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.dark:
        return const LinearGradient(
          colors: [Color(0xFF212121), Color(0xFF424242)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.cosmicBlue:
        return const LinearGradient(
          colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicListTileType.cosmicOrange:
        return const LinearGradient(
          colors: [Color(0xFFf7971e), Color(0xFFffd200)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          gradient: _getGradientByType(type),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            if (leading != null) leading!,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) title!,
                  if (subtitle != null) subtitle!,
                ],
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
