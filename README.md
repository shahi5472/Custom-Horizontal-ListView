## Features

As a Flutter Developer, one common issue we encounter is related to horizontal lists. Sometimes, 
it becomes challenging to maintain dynamic item heights within such lists. However, 
I have a solution that I'd like to share. By using this code, the horizontal 
list should now have dynamically sized items, making it more flexible to accommodate various 
content heights.

## Example Code

```dart
CustomHorizontalView(
  spaceView: SizedBox(width: 10),
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
    spaceView: SizedBox(width: 10),
    padding: EdgeInsets.zero,
    crossAxisAlignment: CrossAxisAlignment.start,
    reverse: false,
    physics: BouncingScrollPhysics(),
    controller: ScrollController(),
),
```