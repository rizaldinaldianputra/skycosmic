import 'package:flutter/material.dart';

enum CosmicContainerStyle {
  glass,
  flat,
  shadow,
  bordered,
  gradientBlue,
  gradientPurple,
  gradientSunset,
}

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final CosmicContainerStyle style;
  final double borderRadius;
  final VoidCallback? onTap;

  const SkyCosmic{{ComponentName}}({
    super.key,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.style = CosmicContainerStyle.flat,
    this.borderRadius = 12.0,
    this.onTap,
  });

  BoxDecoration _getDecoration(CosmicContainerStyle style) {
    switch (style) {
      case CosmicContainerStyle.glass:
        return BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.white.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        );
      case CosmicContainerStyle.flat:
        return BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        );
      case CosmicContainerStyle.shadow:
        return BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        );
      case CosmicContainerStyle.bordered:
        return BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.grey.shade300),
        );
      case CosmicContainerStyle.gradientBlue:
        return BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        );
      case CosmicContainerStyle.gradientPurple:
        return BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF8e2de2), Color(0xFF4a00e0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        );
      case CosmicContainerStyle.gradientSunset:
        return BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFee0979), Color(0xFFff6a00)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final container = Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: _getDecoration(style),
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: container,
      );
    }

    return container;
  }
}
