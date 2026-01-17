import 'package:flutter/material.dart';

enum CosmicAvatarShape { circle, square, standard }

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final double size;
  final CosmicAvatarShape shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool showBorder;
  final Color borderColor;
  final double borderWidth;

  const SkyCosmic{{ComponentName}}({
    super.key,
    this.imageUrl,
    this.initials,
    this.size = 50,
    this.shape = CosmicAvatarShape.circle,
    this.backgroundColor,
    this.foregroundColor,
    this.showBorder = false,
    this.borderColor = Colors.blue,
    this.borderWidth = 2,
  });

  BorderRadius _getBorderRadius() {
    switch (shape) {
      case CosmicAvatarShape.circle:
        return BorderRadius.circular(size / 2);
      case CosmicAvatarShape.square:
        return BorderRadius.circular(size * 0.2); // slight rounding
      case CosmicAvatarShape.standard:
        return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey.shade200,
        borderRadius: _getBorderRadius(),
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
        boxShadow: [
          if (showBorder)
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
        ],
        image: imageUrl != null
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      alignment: Alignment.center,
      child: imageUrl == null
          ? Text(
              initials ?? '?',
              style: TextStyle(
                color: foregroundColor ?? Colors.grey.shade800,
                fontSize: size * 0.4,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
    );
  }
}
