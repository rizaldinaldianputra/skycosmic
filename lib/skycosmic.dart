library skycosmic;

import 'dart:io';

/// A utility class to generate Flutter components from predefined templates.
class CosmicGenerator {
  /// Generates a component from a template.
  ///
  /// [componentName] is the name of the component to create.
  /// [templateName] is the template to use (default is 'button').
  static void generate(String componentName, {String templateName = 'button'}) {
    print('Creating component $componentName from template $templateName...');

    final templateFile = File('templates/$templateName.dart.tpl');
    if (!templateFile.existsSync()) {
      print(
          'Template $templateName not found! Using default "button" template.');
      return;
    }

    String template = templateFile.readAsStringSync();
    template = template.replaceAll('{{ComponentName}}', componentName);

    final dir = Directory('lib/components');
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }

    final outputFile =
        File('lib/components/${componentName.toLowerCase()}.dart');
    if (outputFile.existsSync()) {
      print('File ${outputFile.path} already exists!');
      return;
    }

    outputFile.writeAsStringSync(template);
    print(
        'Component $componentName successfully created at ${outputFile.path}');
  }
}
