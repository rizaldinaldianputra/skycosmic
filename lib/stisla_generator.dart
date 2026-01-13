library stisla_generator;

import 'dart:io';

class StislaGenerator {
  /// Generate komponen dari template
  static void generate(String componentName, {String templateName = 'button'}) {
    print('Membuat komponen $componentName dari template $templateName...');

    final templateFile = File('templates/$templateName.dart.tpl');
    if (!templateFile.existsSync()) {
      print('Template $templateName tidak ditemukan! Gunakan default "button"');
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
      print('File ${outputFile.path} sudah ada!');
      return;
    }

    outputFile.writeAsStringSync(template);
    print('Komponen $componentName berhasil dibuat di ${outputFile.path}');
  }
}
