# Generate Crossword / Flutter Word Puzzle

Proyecto del [Codelab oficial de Google: Build a word puzzle with Flutter](https://codelabs.developers.google.com/codelabs/flutter-word-puzzle?hl=es-410).

Este es el código final (step_09) del codelab que construye un generador algorítmico de crucigramas y un juego interactivo de word puzzle usando:

- Flutter + Dart
- Riverpod para estado
- built_value / built_collection para modelos inmutables
- Isolates para cómputo en background
- two_dimensional_scrollables para grids grandes

## Cómo ejecutar

1. Asegúrate de tener [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado (versión reciente, SDK ^3.14).

2. En esta carpeta ejecuta:

```bash
flutter create . --platforms=android,ios,web,windows,macos,linux
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # si es necesario regenerar *.g.dart
flutter run
```

3. **Importante**: descarga la lista de palabras SOWPODS y guárdala como `assets/words.txt`:

```bash
curl -o assets/words.txt https://norvig.com/ngrams/sowpods.txt
```

(o descarga manualmente desde https://norvig.com/ngrams/sowpods.txt)

## Estructura principal

- `lib/main.dart` - Entrada de la app
- `lib/model.dart` - Modelos inmutables del crucigrama
- `lib/providers.dart` - Providers de Riverpod (lista de palabras, generador, puzzle)
- `lib/isolates.dart` - Trabajo en isolates
- `lib/widgets/` - UI del generador y del juego

Código original de los Flutter Authors (licencia BSD-style / Apache 2.0 según el codelab).

¡Disfruta resolviendo el puzzle!
