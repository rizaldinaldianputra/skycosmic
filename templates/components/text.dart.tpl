import 'package:flutter/material.dart';

enum CosmicTextType {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  bodyLarge,
  bodyMedium,
  bodySmall,
  caption,
  button,
}

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final String text;
  final CosmicTextType type;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const SkyCosmic{{ComponentName}}(
    this.text, {
    super.key,
    this.type = CosmicTextType.bodyMedium,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  TextStyle _getStyleByType(CosmicTextType type) {
    switch (type) {
      case CosmicTextType.h1:
        return TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        );
      case CosmicTextType.h2:
        return TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        );
      case CosmicTextType.h3:
        return TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: color ?? Colors.black,
        );
      case CosmicTextType.h4:
        return TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: color ?? Colors.black,
        );
      case CosmicTextType.h5:
        return TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: color ?? Colors.black,
        );
      case CosmicTextType.h6:
        return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: color ?? Colors.black,
        );
      case CosmicTextType.bodyLarge:
        return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black87,
        );
      case CosmicTextType.bodyMedium:
        return TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black87,
        );
      case CosmicTextType.bodySmall:
        return TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black54,
        );
      case CosmicTextType.caption:
        return TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w300,
          color: color ?? Colors.grey,
        );
      case CosmicTextType.button:
        return TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.white,
          letterSpacing: 1.2,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyleByType(type),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
