
# Flutter UI Demo

A simple Flutter application demonstrating the use of **icons**, **images**, and **charts** (using `fl_chart`).

---

## Dependencies

Add the following under `dependencies` in `pubspec.yaml` then run `flutter pub get`:

```yaml
flutter:
  sdk: flutter

# For charts
fl_chart: ^0.66.0
```

---

## Folder Structure

lib/
│
├── main.dart
├── screens/
│   └── home_screen.dart
├── widgets/
│   ├── profile_image.dart
│   └── bar_chart_widget.dart
```

---

## Assets

Add your image under: `assets/images/profile.jpg`

Then in `pubspec.yaml`, enable:

```yaml
assets:
  - assets/images/profile.jpg
```
```

