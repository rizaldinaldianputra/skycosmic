import 'package:flutter/material.dart';

class StislaCard extends StatelessWidget {
  final Widget child;

  const StislaCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(child: child);
  }
}
