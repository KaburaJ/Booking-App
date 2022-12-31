import 'package:flutter/material.dart';

class AppLayoutBuiderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuiderWidget(
      {Key? key, this.isColor, required this.sections, this.width = 3})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 6).floor(),
              (index) => SizedBox(
                width: 1,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? Colors.white
                          : Colors.grey.shade300),
                ),
              ),
            ));
      },
    );
  }
}
