import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String? label;
  final Color activeColor;

  const {{ComponentName}}({
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
