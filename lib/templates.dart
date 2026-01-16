/// Auto-generated templates for Skycosmic CLI.
///
/// This library contains strings for various Flutter component templates.
library;

/// A collection of predefined templates for generating Flutter components.
///
/// This class holds the implementation strings for different UI components
/// supported by the Skycosmic CLI.
class CosmicTemplates {
  /// A map of template names to their source code content.
  ///
  /// Keys are template identifiers (e.g., 'button', 'card'), and values are
  /// the Dart source code strings with placeholders like `{{ComponentName}}`.
  static const Map<String, String> templates = {
    'appbar': r'''import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.actions,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: backgroundColor ?? Colors.white,
      foregroundColor: foregroundColor ?? Colors.black,
      elevation: 0,
      automaticallyImplyLeading: showBackButton,
      actions: actions,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey.shade200,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
''',
    'bottom_nav': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavigationBarItem> items;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.selectedItemColor,
    this.unselectedItemColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
        selectedItemColor: selectedItemColor ?? Colors.blue,
        unselectedItemColor: unselectedItemColor ?? Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}
''',
    'button': r'''import 'package:flutter/material.dart';

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

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final CosmicButtonType type;
  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? child;
  final VoidCallback? onPressed;

  const SkyCosmic{{ComponentName}}({
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
''',
    'card': r'''import 'package:flutter/material.dart';

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
''',
    'checkbox': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String? label;
  final Color activeColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.activeColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: activeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => onChanged(!value),
            child: Text(label!),
          ),
        ],
      );
    }
    
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
''',
    'column': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final double spacing;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.spacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    if (spacing > 0) {
      final spacedChildren = <Widget>[];
      for (var i = 0; i < children.length; i++) {
        spacedChildren.add(children[i]);
        if (i < children.length - 1) {
          spacedChildren.add(SizedBox(height: spacing));
        }
      }
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: spacedChildren,
      );
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }
}
''',
    'container': r'''import 'package:flutter/material.dart';

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
''',
    'drawer': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final String headerTitle;
  final String? headerSubtitle;
  final List<Widget> items;
  final Color? headerColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.headerTitle,
    this.headerSubtitle,
    required this.items,
    this.headerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: headerColor ?? Colors.blue,
            ),
            accountName: Text(
              headerTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: headerSubtitle != null ? Text(headerSubtitle!) : null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                headerTitle.isNotEmpty ? headerTitle[0].toUpperCase() : 'A',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: headerColor ?? Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: items,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
''',
    'gridview': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;
  final EdgeInsetsGeometry padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 16.0,
    this.crossAxisSpacing = 16.0,
    this.childAspectRatio = 1.0,
    this.padding = const EdgeInsets.all(16),
    this.shrinkWrap = false,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}
''',
    'icon': r'''import 'package:flutter/material.dart';

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
''',
    'image': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  const SkyCosmic{{ComponentName}}({
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
''',
    'listile': r'''import 'package:flutter/material.dart';

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
''',
    'listview': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final double spacing;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.children,
    this.padding = const EdgeInsets.all(16),
    this.shrinkWrap = false,
    this.physics,
    this.spacing = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: children.length,
      separatorBuilder: (context, index) => SizedBox(height: spacing),
      itemBuilder: (context, index) => children[index],
    );
  }
}
''',
    'radio': r'''import 'package:flutter/material.dart';

class {{ComponentName}}<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final String? label;
  final Color activeColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
    this.activeColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: activeColor,
          ),
          GestureDetector(
            onTap: () => onChanged(value),
            child: Text(label!),
          ),
        ],
      );
    }

    return Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: activeColor,
    );
  }
}
''',
    'row': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final double spacing;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.spacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    if (spacing > 0) {
      final spacedChildren = <Widget>[];
      for (var i = 0; i < children.length; i++) {
        spacedChildren.add(children[i]);
        if (i < children.length - 1) {
          spacedChildren.add(SizedBox(width: spacing));
        }
      }
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: spacedChildren,
      );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }
}
''',
    'scaffold': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.drawer,
    this.bottomNavigationBar,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.grey[50],
      appBar: appBar,
      body: SafeArea(
        child: body,
      ),
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
''',
    'stack': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final List<Widget> children;
  final AlignmentGeometry alignment;
  final StackFit fit;
  final Clip clipBehavior;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.children,
    this.alignment = AlignmentDirectional.topStart,
    this.fit = StackFit.loose,
    this.clipBehavior = Clip.hardEdge,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      fit: fit,
      clipBehavior: clipBehavior,
      children: children,
    );
  }
}
''',
    'switch': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? label;
  final Color activeColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.activeColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: activeColor,
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => onChanged(!value),
            child: Text(label!),
          ),
        ],
      );
    }

    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
    );
  }
}
''',
    'text': r'''import 'package:flutter/material.dart';

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

  const {{ComponentName}}(
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
''',
    'textfield': r'''import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  const SkyCosmic{{ComponentName}}({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}
''',
  };
}
