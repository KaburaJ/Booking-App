import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:kaburacreates/utils/app_layout.dart';
import 'package:kaburacreates/widgets/layout_builder_widget.dart';
import 'package:kaburacreates/widgets/thick_container.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';

class GameView extends StatelessWidget {
  final Map<String, dynamic> list;
  final bool? isColor;
  const GameView({Key? key, required this.list, this.isColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 177),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? const Color(0xfffbf8fa) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)))),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    list['001_Available']['code'],
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.black)
                        : Styles.headLineStyle3,
                  ),
                  Expanded(child: Container()),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(
                      child: SizedBox(
                          height: AppLayout.getHeight(24),
                          child: AppLayoutBuiderWidget(
                            sections: 6,
                          ))),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(child: Container()),
                  Text(
                    list['002_Available']['code'],
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.black)
                        : Styles.headLineStyle3,
                  ),
                ],
              ),
              const Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      list['001_Available']['name'],
                      style: isColor == null
                          ? Styles.headLineStyle4.copyWith(color: Colors.black)
                          : Styles.headLineStyle4,
                    ),
                  ),
                  Text(
                    list['available_time'],
                    style: isColor == null
                        ? Styles.headLineStyle4
                            .copyWith(color: Color(0xff131212))
                        : Styles.headLineStyle4,
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      list['002_Available']['name'],
                      textAlign: TextAlign.end,
                      style: isColor == null
                          ? Styles.headLineStyle4
                              .copyWith(color: Color(0xff141414))
                          : Styles.headLineStyle4,
                    ),
                  ),
                ],
              )
            ]),
          ),
          Container(
              color: isColor == null ? Styles.orangeColor : Color(0xff161616),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getWidth(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                  AppLayout.getHeight(10),
                                ),
                                bottomRight: Radius.circular(
                                  AppLayout.getHeight(10),
                                )))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(12),
                    ),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  )
                ],
              )),
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null
                        ? AppLayout.getHeight(21)
                        : AppLayout.getHeight(0)),
                    bottomRight: Radius.circular(isColor == null
                        ? AppLayout.getHeight(21)
                        : AppLayout.getHeight(0)))),
            padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                top: AppLayout.getHeight(10),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getHeight(16)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: list['date'],
                    secondText: "DATE",
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    firstText: list['time'],
                    secondText: "TIME",
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    firstText: list['players'],
                    secondText: "PLAYER",
                    alignment: CrossAxisAlignment.end,
                    isColor: isColor,
                  ),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
