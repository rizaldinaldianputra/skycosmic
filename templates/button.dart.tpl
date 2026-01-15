import 'package:flutter/material.dart';

enum CosmicButtonType {
  cosmicBlue,
  cosmicOrange,
  cosmicPurple,
  cosmicGreen,
  cosmicRed,
  cosmicPink,
  cosmicCyan,
  cosmicYellow,
  cosmicTeal,
  cosmicViolet,
}

class {{ComponentName}} extends StatelessWidget {
  final CosmicButtonType type;
  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? child;
  final VoidCallback? onPressed;

  const {{ComponentName}}({
    super.key,
    this.type = CosmicButtonType.cosmicBlue,
    this.width,
    this.height = 50,
    this.borderRadius = 12,
    this.child,
    this.onPressed,
  });

  LinearGradient _getGradientByType(CosmicButtonType type) {
    switch (type) {
      case CosmicButtonType.cosmicBlue:
        return const LinearGradient(
          colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicOrange:
        return const LinearGradient(
          colors: [Color(0xFFf7971e), Color(0xFFffd200)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicPurple:
        return const LinearGradient(
          colors: [Color(0xFF8e2de2), Color(0xFF4a00e0)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicGreen:
        return const LinearGradient(
          colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicRed:
        return const LinearGradient(
          colors: [Color(0xFFe53935), Color(0xFFe35d5b)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicPink:
        return const LinearGradient(
          colors: [Color(0xFFee0979), Color(0xFFff6a00)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicCyan:
        return const LinearGradient(
          colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicYellow:
        return const LinearGradient(
          colors: [Color(0xFFf9d423), Color(0xFFff4e50)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicTeal:
        return const LinearGradient(
          colors: [Color(0xFF11998e), Color(0xFF38ef7d)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case CosmicButtonType.cosmicViolet:
        return const LinearGradient(
          colors: [Color(0xFF654ea3), Color(0xFFeaafc8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: _getGradientByType(type),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: child ?? Text(
          type.name, // otomatis nama type muncul
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
