import 'package:flutter/material.dart';

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
