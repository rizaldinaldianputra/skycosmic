import 'dart:io';
import 'package:skycosmic/skycosmic.dart';

void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Usage: skycosmic create <template_name>');
    print('Example: skycosmic create button (Component)');
    print('Example: skycosmic create login (UI)');
    exit(0);
  }

  final command = arguments[0];
  final templateName = arguments[1].toLowerCase();

  if (command != 'create') {
    print('Unknown command: $command');
    print('Usage: skycosmic create <template_name>');
    exit(0);
  }

  // Determine type based on template name availability
  // We need to know if "templateName" implies a component or a UI.
  // The CosmicGenerator needs to know this potentially, but here we can try to guess or just pass it to the generator.
  // Wait, the generator logic I just wrote asks for type.
  // Since the user command is the same "skycosmic create <name>", we have to infer the type.
  // Let's rely on a helper or check availability.

  // Quick check helper (simpler version of what's in lib, but we need to know what to pass)
  // Actually, let's just default to Component unless we know it is UI?
  // Or better: Checking if it exists in UI folder first?

  // NOTE: Providing a more robust way by checking existence before calling generate would be ideal,
  // but for simplicity and because I can't easily import the internal _findTemplate logic,
  // I will make a guess:
  // "login" is typically UI. "button", "card" etc are components.
  // Let's try to find it as a Component first, if not found, try UI?
  // Or vice versa?
  // Actually, the Generator logic I wrote expects a type.
  // I should update the Generator to be smarter OR update this to check.

  // Let's update this to try "component" first, and if the generator fails (we can't easily capture print output here), it's tricky.
  // BETTER APPROACH: Update Generator.generate to handle the inference if type is not provided?
  // OR, just iterate here.

  // Let's assume for now we check basic list of known UI items?
  // No, that's hardcoded.

  // Let's just try both?
  // "skycosmic create button" -> Try Component.

  // Refined Strategy:
  // I'll update the generator in a future step if needed, but for now let's pass a flag or just try one.
  // Actually, I can modify the Generator to have an `inferAndGenerate` method.
  // But strictly following the "2 class" rule, `CosmicGenerator` should handle it.

  // Let's change this file to just call a smart method on CosmicGenerator.
  // But I defined `generate(..., required type)` in the previous step.
  // I should have made it optional or smart.
  // I will modify this file to use a new static method I'll add to CosmicGenerator in a quick fix,
  // OR just do the check here.

  // Actually, simply:
  CosmicGenerator.generate(templateName, type: _inferType(templateName));
}

String _inferType(String name) {
  // Hardcoded known UIs for now or check file existence?
  // Checking file existence is safer.

  final List<String> searchPaths = [
    'templates',
    '../templates',
    '../../templates',
    Platform.script.resolve('../templates').toFilePath(),
  ];

  for (final path in searchPaths) {
    if (File('$path/ui/$name.dart.tpl').existsSync()) {
      return 'ui';
    }
    if (File('$path/components/$name.dart.tpl').existsSync()) {
      return 'component';
    }
  }

  // Default to component if not found (Generator will error out anyway)
  return 'component';
}
