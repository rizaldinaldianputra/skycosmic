import 'dart:io';

void main(List<String> args) {
  if (args.length < 2 || args[0] != 'create') {
    print('Usage: stisla create <component>');
    exit(1);
  }

  final component = args[1];
  final templatePath = 'templates/$component.dart.tpl';

  if (!File(templatePath).existsSync()) {
    print('❌ Component "$component" not found');
    exit(1);
  }

  final targetDir = Directory('lib/components/$component');
  targetDir.createSync(recursive: true);

  final targetFile = File('${targetDir.path}/stisla_${component}.dart');

  if (targetFile.existsSync()) {
    print('⚠️ Component already exists');
    exit(0);
  }

  final content = File(templatePath).readAsStringSync();
  targetFile.writeAsStringSync(content);

  print('✅ $component component created');
}
