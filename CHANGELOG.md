# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [0.0.9] - 2026-01-16

- Refactored CLI structure to support strict `skycosmic create <name>` command.
- Added strict support for Component creation (e.g., `skycosmic create button` for UI Components).
- Added strict support for UI creation (e.g., `skycosmic create login` for Full UI Screens).
- Cleaned up unused files and improved codebase organization.
- Fixed global command execution issues.

## [0.0.8]

### ♻️ Refactoring

- **Naming Convention**: Updated component class names to be prefixed with `SkyCosmic` (e.g., `SkyCosmicButton`) for consistency and to avoid conflicts.

---

## [0.0.7]

### 🐛 Bug Fixes

- **CLI**: Resolved issues with the `skycosmic` CLI where templates were not being correctly identified in some environments.

---

## [0.0.6]

### ✨ New Features

- **Components**: Added a comprehensive suite of new components including `AppBar`, `BottomNav`, `Checkbox`, `Column`, `Container`, `Drawer`, `GridView`, `Icon`, and `Image`.

---

## [0.0.5]

### 📝 Documentation

- **README**: Updated `README.md` with professional formatting, installation instructions, and detailed feature descriptions.

---

## [0.0.4]

### ✨ New Features

- **CosmicCard**: Introduced `CosmicCard` widget with customizable gradient, padding, borderRadius, and onTap actions.
- **CosmicListTile**: Added `CosmicListTile` widget with 10 common type options and customizable leading, trailing, title, and subtitle.
- **CosmicButton**: Enhanced `CosmicButtonWidget` with 10 predefined gradient types and optional parameters for width, height, and borderRadius.

### ⚡ Changes

- **Styling**: Updated `CosmicButtonWidget` gradient logic for better visual consistency.
- **API**: Refactored widget constructors for improved flexibility and readability.

### 🐛 Bug Fixes

- **Styling**: Fixed minor gradient alignment issues in `CosmicButtonWidget`.

---

## [0.0.2] - 2026-01-10

### ✨ New Features

- **Button**: Initial set of `CosmicButtonWidget` with basic gradient types: celestial blue, solar flare orange, nebula purple, aurora green, and mars red.

### 🐛 Bug Fixes

- **Layout**: Corrected default height and borderRadius values for `CosmicButtonWidget`.

---

## [0.0.1] - 2026-01-05

### 🎉 Initial Release

- **CLI**: Launched `skycosmic` executable for scaffolding projects.
- **Core**: Initial `CosmicButtonWidget` prototype with single gradient support.
