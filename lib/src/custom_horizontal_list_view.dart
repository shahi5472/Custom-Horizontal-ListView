import 'package:flutter/material.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({
    super.key,
    required this.items,
    this.padding,
    this.reverse = false,
    this.physics,
    this.controller,
    this.spacing = 0.0,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rowCrossAxisAlignment = CrossAxisAlignment.center,
  });

  final List<Widget> items;
  final EdgeInsetsGeometry? padding;

  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment rowCrossAxisAlignment;

  final bool reverse;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: padding,
          reverse: reverse,
          physics: physics,
          controller: controller,
          child: Row(
            spacing: spacing,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: rowCrossAxisAlignment,
            children: List.generate(items.length, (index) => items[index]),
          ),
        ),
      ],
    );
  }
}
