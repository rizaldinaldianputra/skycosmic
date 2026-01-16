import 'package:skycosmic/skycosmic.dart';

void main() {
  print('Running skycosmic example...');

  // Generate a button component named 'MyButton'
  // using the default 'button' template.
  CosmicGenerator.generate('MyButton', templateName: 'button');

  // Generate a card component named 'MyCard'
  // using the 'card' template.
  CosmicGenerator.generate('MyCard', templateName: 'card');

  print('Example finished. Check lib/components for generated files.');
}
