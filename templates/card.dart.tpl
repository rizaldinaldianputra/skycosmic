import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget {
  const {{ComponentName}}({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('{{ComponentName}} Card', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 8),
            const Text('Isi konten card di sini'),
          ],
        ),
      ),
    );
  }
}
