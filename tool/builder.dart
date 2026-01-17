import 'dart:io';

void main() async {
  final templatesDir = Directory('templates');
  final outputFile = File('lib/templates.dart');

  if (!templatesDir.existsSync()) {
    print('Error: templates directory not found.');
    return;
  }

  final buffer = StringBuffer();
  buffer.writeln('/// Auto-generated templates for Skycosmic CLI.');
  buffer.writeln('///');
  buffer.writeln(
      '/// This library contains strings for various Flutter component templates.');
  buffer.writeln('library;');
  buffer.writeln();
  buffer.writeln(
      '/// A collection of predefined templates for generating Flutter components.');
  buffer.writeln('///');
  buffer.writeln(
      '/// This class holds the implementation strings for different UI components');
  buffer.writeln('/// supported by the Skycosmic CLI.');
  buffer.writeln('class CosmicTemplates {');
  buffer.writeln('  /// A map of template names to their source code content.');
  buffer.writeln('  ///');
  buffer.writeln(
      '  /// Keys are template identifiers (e.g., \'button\', \'card\'), and values are');
  buffer.writeln(
      '  /// the Dart source code strings with placeholders like `{{ComponentName}}`.');
  buffer.writeln('  static const Map<String, String> templates = {');

  final files = templatesDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart.tpl'))
      .toList();
  files.sort((a, b) => a.path.compareTo(b.path));

  for (final file in files) {
    final fileName = file.uri.pathSegments.last;
    final templateName = fileName.replaceAll('.dart.tpl', '');
    final content = await file.readAsString();

    print('Processing $templateName...');

    buffer.writeln("    '$templateName': r'''$content''',");
  }

  buffer.writeln('  };');
  buffer.writeln('}');

  await outputFile.writeAsString(buffer.toString());
  print('Successfully generated lib/templates.dart');
}
