import 'package:flutter/material.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({
    Key? key,
    required this.items,
    this.spaceView,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.reverse = false,
    this.physics,
    this.controller,
  }) : super(key: key);

  final List<Widget> items;
  final Widget? spaceView;
  final EdgeInsetsGeometry? padding;

  final CrossAxisAlignment crossAxisAlignment;

  final bool reverse;
  final ScrollPhysics? physics;
  final ScrollController? controller;

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
            children: List.generate(
              items.length,
              (index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    items[index],
                    if (spaceView != null && index != items.length - 1) spaceView!,
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
