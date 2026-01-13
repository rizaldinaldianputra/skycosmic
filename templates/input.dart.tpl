import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget {
  const {{ComponentName}}({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: '{{ComponentName}} Input',
        border: OutlineInputBorder(),
      ),
    );
  }
}
