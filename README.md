## Features

As a Flutter Developer, one common issue we encounter is related to horizontal lists. Sometimes, 
it becomes challenging to maintain dynamic item heights within such lists. However, 
I have a solution that I'd like to share. By using this code, the horizontal 
list should now have dynamically sized items, making it more flexible to accommodate various 
content heights.

## Import it
Now in your Dart code, you can use:
```dart
import 'package:custom_horizontal_list_view/custom_horizontal_list_view.dart';
```

This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):

```dart
dependencies:custom_horizontal_list_view: ^
1.0
.1
```

## Example Code

```dart
CustomHorizontalView(
spacing: 10.0,
  padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
  items: List.generate(
    10,
    (index) {
      return Text("INDEX : $index");
    },
  ),
);
```

## Additional information
```dart
import 'package:custom_horizontal_list_view/custom_horizontal_list_view.dart';

CustomHorizontalListView(
    items: [],
spacing: 10.0,
    padding: EdgeInsets.zero,
    crossAxisAlignment: CrossAxisAlignment.start,
    reverse: false,
    physics: BouncingScrollPhysics(),
    controller: ScrollController(),
),
```