import 'dart:io';
import 'package:skycosmic/skycosmic_generator.dart';

void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Usage: skycosmic create <component_name>');
    exit(0);
  }

  final command = arguments[0];
  final componentName = arguments[1];

  if (command != 'create') {
    print('Unknown command: $command');
    print('Usage: skycosmic create <component_name>');
    exit(0);
  }

  // Automatically use component name as template
  CosmicGenerator.generate(
    componentName,
    templateName: componentName.toLowerCase(),
  );
}
