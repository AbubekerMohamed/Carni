import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final int width;
  const LayoutBuilderWidget(
      {super.key, this.isColor, required this.sections, this.width = 5});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              (index) => SizedBox(
                    width: AppLayout.getWidth(width.toDouble()),
                    height: AppLayout.getHeight(1),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade300)),
                  )),
        );
      },
    );
  }
}
