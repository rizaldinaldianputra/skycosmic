import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  const {{ComponentName}}({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 12.0,
    this.placeholder,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.startsWith('http')) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return placeholder ??
                Container(
                  width: width,
                  height: height,
                  color: Colors.grey[200],
                  child: const Center(child: CircularProgressIndicator()),
                );
          },
          errorBuilder: (context, error, stackTrace) {
            return errorWidget ??
                Container(
                  width: width,
                  height: height,
                  color: Colors.grey[200],
                  child: const Icon(Icons.error, color: Colors.red),
                );
          },
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
            return errorWidget ??
                Container(
                  width: width,
                  height: height,
                  color: Colors.grey[200],
                  child: const Icon(Icons.error, color: Colors.red),
                );
          },
      ),
    );
  }
}
