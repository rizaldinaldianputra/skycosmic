/// A command-line tool for generating Flutter components with predefined templates.
///
/// This library provides the core functionality for the Skycosmic CLI,
/// allowing developers to quickly scaffold UI components.
library;

import 'dart:io';

/// A utility class to generate Flutter components from predefined templates.
///
/// Use [CosmicGenerator.generate] to create new component files.
class CosmicGenerator {
  /// Generates a component or UI from a template.
  ///
  /// [name] is the name of the component/ui to create.
  /// [type] must be 'component' or 'ui'.
  static void generate(String name, {required String type}) {
    // Validate type
    if (type != 'component' && type != 'ui') {
      print('Error: Invalid type "$type". Must be "component" or "ui".');
      return;
    }

    final templateName = name.toLowerCase();
    // For filenames, we use the input name directly but lowercased.
    // However, the template file itself might be different?
    // User request: "skycosmic create button" -> Component
    // User request: "skycosmic create login" -> UI
    // So for "button", we look for "templates/components/button.dart.tpl"
    // For "login", we look for "templates/ui/login.dart.tpl"

    final templateData = _findTemplate(templateName, type);
    if (templateData == null) {
      print('Error: Template "$templateName" not found in templates/$type/');
      print('Available $type templates:');
      _listTemplates(type);
      return;
    }

    // Capitalize for class name
    final className = 'SkyCosmic${name[0].toUpperCase()}${name.substring(1)}';

    String content = templateData;
    content = content.replaceAll('{{ComponentName}}', className);

    // Determine output directory
    final String outputDir = type == 'ui' ? 'lib/ui' : 'lib/components';

    final dir = Directory(outputDir);
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }

    final outputFile = File('$outputDir/${name.toLowerCase()}.dart');
    if (outputFile.existsSync()) {
      print('Error: File ${outputFile.path} already exists!');
      return;
    }

    outputFile.writeAsStringSync(content);
    print(
        '${type == 'ui' ? 'UI' : 'Component'} "$className" successfully created at ${outputFile.path}');
  }

  static String? _findTemplate(String templateName, String type) {
    // Try to find templates directory in various locations similar to before
    final List<String> searchPaths = [
      'templates', // Local repo
      '../templates', // Relative to bin/
      '../../templates',
      Platform.script
          .resolve('../templates')
          .toFilePath(), // Relative to script
    ];

    for (final path in searchPaths) {
      // Handle directory naming convention difference:
      // component -> templates/components (plural)
      // ui -> templates/ui (singular based on previous list_dir, keeping it simple)

      String dirName = type == 'component' ? 'components' : 'ui';

      final targetFile = File('$path/$dirName/$templateName.dart.tpl');

      if (targetFile.existsSync()) {
        return targetFile.readAsStringSync();
      }
    }
    return null;
  }

  static void _listTemplates(String type) {
    final List<String> searchPaths = [
      'templates',
      '../templates',
      '../../templates',
      Platform.script.resolve('../templates').toFilePath(),
    ];

    for (final path in searchPaths) {
      String dirName = type == 'component' ? 'components' : 'ui';
      final dir = Directory('$path/$dirName');
      if (dir.existsSync()) {
        final files = dir.listSync();
        for (var f in files) {
          if (f is File && f.path.endsWith('.tpl')) {
            print(' - ${f.uri.pathSegments.last.replaceAll('.dart.tpl', '')}');
          }
        }
        return; // Found the dir, stop searching
      }
    }
    print(' (No templates directory found)');
  }
}
