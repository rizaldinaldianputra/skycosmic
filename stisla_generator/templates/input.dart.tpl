import 'package:flutter/material.dart';

class StislaInput extends StatelessWidget {
  final TextEditingController controller;

  const StislaInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller);
  }
}
