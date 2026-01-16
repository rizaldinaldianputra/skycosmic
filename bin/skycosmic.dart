import 'dart:io';
import 'package:skycosmic/skycosmic.dart';

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
  final formattedName = componentName.isEmpty
      ? componentName
      : componentName[0].toUpperCase() + componentName.substring(1);

  CosmicGenerator.generate(
    formattedName,
    templateName: componentName.toLowerCase(),
  );
}
