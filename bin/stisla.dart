import 'dart:io';
import 'package:stisla_generator/stisla_generator.dart';

void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Gunakan: stisla create <nama_komponen>');
    exit(0);
  }

  final command = arguments[0];
  final componentName = arguments[1];

  if (command != 'create') {
    print('Perintah tidak dikenal: $command');
    print('Gunakan: stisla create <nama_komponen>');
    exit(0);
  }

  // template otomatis pakai nama komponen
  StislaGenerator.generate(componentName,
      templateName: componentName.toLowerCase());
}
