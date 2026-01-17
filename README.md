# SkyCosmic 🚀

![Pub Version](https://img.shields.io/pub/v/skycosmic)
![License](https://img.shields.io/github/license/rizaldinaldianputra/skycosmic)
![Dart SDK](https://img.shields.io/badge/Dart-SDK%20%3E%3D3.0.0-blue)

**SkyCosmic** is a professional Flutter package designed to streamline UI development. It provides a robust CLI tool and a collection of ready-to-use, customizable UI component templates, enabling developers to rapidly build consistent and beautiful interfaces.

## ✨ Features

- **⚡ CLI Support**: Built-in command-line interface to generate components instantly.
- **🎨 Pre-designed Templates**: Includes templates for common UI elements like Buttons, Cards, and ListTiles.
- **🛠️ Automated Boilerplate**: Saves time by automatically generating component files with necessary imports and structure.
- **📦 Easy Integration**: Simple commands to add components directly to your project's `lib/components` directory.
- **📦 Easy Build UI**: Simple commands to add components directly to your project's `lib/ui` directory.

## 🚀 Installation

### Global Activation (Recommended for CLI)

To use the `skycosmic` command anywhere in your terminal, activate it globally.

**From Pub.dev (if published):**

```bash
dart pub global activate skycosmic
```

**From Local Source (for development):**

```bash
dart pub global activate --source path .
```

### Add as Dependency

To use the library symbols in your project, add it to your `pubspec.yaml`:

```yaml
dependencies:
  skycosmic: ^0.0.10
```

Or run:

```bash
flutter pub add skycosmic
```

## 📖 Usage

### Using the CLI

The SkyCosmic CLI allows you to generate new components effortlessly.

**Syntax:**

```bash
skycosmic create <ComponentName>
```

**Examples:**

### Create a UI Screen

To generate a full UI screen (e.g., Login, Profile):

```bash
skycosmic create login
```

This will create `lib/ui/sky_cosmic_login.dart`.

Generate a standard Button component:

```bash
skycosmic create Button
```

_Creates `lib/components/button.dart` from the Button template._

Generate a Card component:

```bash
skycosmic create Card
```

_Creates `lib/components/card.dart` from the Card template._

Generate a ListTile component:

```bash
skycosmic create Listile
```

_Creates `lib/components/listile.dart` from the ListTile template._

> **Note:** The CLI generates components using bundled templates (bundled in `lib/templates.dart`). If no specific template matches your request, it defaults to the **Button** template.

## 📂 Project Structure

- **bin/**: Contains the CLI entry point (`skycosmic.dart`).
- **lib/**:
  - `skycosmic.dart`: Core library and generator logic.
  - `components/`: Generated components will be placed here by the CLI.
- **templates/**: Source Dart templates (`.tpl`) used for generation.
  - `button.dart.tpl`
  - `card.dart.tpl`
  - `listile.dart.tpl`

## 🤝 Contributing

Contributions are welcome! If you'd like to improve SkyCosmic or add new templates:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
createBy © Rizaldi Naldian Putra
