# Hajj Screen Flutter Project

## Project Overview

This Flutter project implements a Hajj-related screen with modular components, following clean architecture principles. The project structure consists of core utilities, widgets, state management using Cubit, and UI presentation.

## Project Structure

```
- core/
  - constants/
  - utils/
  - widgets/
- hajj_screen/
  - controller/cubit/
  - presentation/
    - card_page_view.dart
    - custom_card_widget.dart
    - hajj_screen_body.dart
    - hajj_wheel_icons_row.dart
    - hajj_wheel_widget.dart
    - home_screen.dart
```

### Core

- **constants/**: Contains global constants used throughout the app.
- **utils/**: Helper functions and utility classes.
- **widgets/**: Reusable UI components.

### Hajj Screen

- **controller/cubit/**: Manages state using Cubit for the Hajj screen.
- **presentation/**: Contains UI-related Dart files that build the screen.
  - `card_page_view.dart`: Manages page view layout for cards.
  - `custom_card_widget.dart`: Defines the custom card UI component.
  - `hajj_screen_body.dart`: Main layout for the Hajj screen.
  - `hajj_wheel_icons_row.dart`: Arranges icons in a row for the Hajj wheel.
  - `hajj_wheel_widget.dart`: Implements the Hajj wheel UI.
  - `home_screen.dart`: Entry point for the Hajj screen UI.

## Installation

1. Clone the repository:
   ```sh
   git clone <repo-url>
   cd <project-directory>
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the project:
   ```sh
   flutter run
   ```

## Dependencies

Ensure you have the following dependencies in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3 # State management
  cupertino_icons: ^1.0.6 # Icons support
```



