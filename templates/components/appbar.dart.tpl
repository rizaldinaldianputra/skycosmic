import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final bool enableGradient;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.actions,
    this.enableGradient = true,
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
      flexibleSpace: enableGradient
          ? Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            )
          : null,
      backgroundColor: enableGradient ? Colors.transparent : (backgroundColor ?? Colors.white),
      foregroundColor: foregroundColor ?? (enableGradient ? Colors.white : Colors.black),
      elevation: enableGradient ? 0 : 0,
      automaticallyImplyLeading: showBackButton,
      actions: actions,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: enableGradient ? Colors.white.withOpacity(0.2) : Colors.grey.shade200,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
