import 'package:flutter/material.dart';

enum CosmicCardType {
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
  final CosmicCardType type;
  final Widget? child;
  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final VoidCallback? onTap;

  const SkyCosmic{{ComponentName}}({
    super.key,
    this.type = CosmicCardType.primary,
    this.child,
    this.width,
    this.height,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 4,
    this.onTap,
  });

  LinearGradient _getGradientByType(CosmicCardType type) {
    switch (type) {
      case CosmicCardType.primary:
        return const LinearGradient(
          colors: [Color(0xFF2196F3), Color(0xFF64B5F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.secondary:
        return const LinearGradient(
          colors: [Color(0xFF9E9E9E), Color(0xFFBDBDBD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.info:
        return const LinearGradient(
          colors: [Color(0xFF00BCD4), Color(0xFF26C6DA)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.success:
        return const LinearGradient(
          colors: [Color(0xFF4CAF50), Color(0xFF81C784)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.warning:
        return const LinearGradient(
          colors: [Color(0xFFFFC107), Color(0xFFFFD54F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.danger:
        return const LinearGradient(
          colors: [Color(0xFFF44336), Color(0xFFE57373)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.light:
        return const LinearGradient(
          colors: [Color(0xFFF5F5F5), Color(0xFFE0E0E0)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.dark:
        return const LinearGradient(
          colors: [Color(0xFF212121), Color(0xFF424242)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.cosmicBlue:
        return const LinearGradient(
          colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicCardType.cosmicOrange:
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
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          gradient: _getGradientByType(type),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: elevation,
              offset: Offset(0, elevation / 2),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
