import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}}<T> extends StatelessWidget {
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
