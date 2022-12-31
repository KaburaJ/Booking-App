// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/screens/games_view.dart';
import 'package:kaburacreates/utils/app_info_list.dart';
import 'package:kaburacreates/utils/app_layout.dart';
import 'package:kaburacreates/widgets/column_layout.dart';
import 'package:kaburacreates/widgets/game_tabs.dart';
import 'package:kaburacreates/widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';

class GamesTicketView extends StatelessWidget {
  const GamesTicketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(10)),
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Text(
                    "Games' Tickets",
                    style: Styles.headLineStyle,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppGameTabs(
                      firstTab: "Upcoming", secondTab: "Previous"),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: GameView(
                      list: gameList[0],
                      isColor: true,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(
                                firstText: "Kabura Creates",
                                secondText: "Player",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumnLayout(
                                firstText: "1234 5678",
                                secondText: "ID",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ]),
                        Gap(AppLayout.getHeight(20)),
                        const AppLayoutBuiderWidget(
                          sections: 15,
                          isColor: false,
                          width: 5,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(
                                firstText: "557 222 1616",
                                secondText: "Ticket no.",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumnLayout(
                                firstText: "B123",
                                secondText: "Booking code",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ]),
                        Gap(AppLayout.getHeight(20)),
                        const AppLayoutBuiderWidget(
                          sections: 15,
                          isColor: false,
                          width: 5,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/img1.jpg",
                                        scale: 9,
                                      ),
                                      Text(
                                        "*** 2712",
                                        style: Styles.headLineStyle3,
                                      )
                                    ],
                                  ),
                                  const Gap(5),
                                  Text("Payment method",
                                      style: Styles.headLineStyle4)
                                ],
                              ),
                              AppColumnLayout(
                                firstText: "Kes. 50.00",
                                secondText: "Price",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ])
                      ])),
                  //Barcode
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(21)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(21)))),
                      margin: EdgeInsets.only(
                        left: AppLayout.getHeight(15),
                        right: AppLayout.getHeight(15),
                      ),
                      padding: EdgeInsets.only(
                        top: AppLayout.getHeight(20),
                        bottom: AppLayout.getHeight(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(20)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: 'https://github.com/martinovovo',
                            drawText: false,
                            color: Styles.bgColor,
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      )),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: GameView(
                      list: gameList[0],
                    ),
                  ),
                ]),
            Positioned(
              left: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2),
                  ),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  )),
            ),
            Positioned(
              right: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Colors.white,
                  )),
            )
          ],
        ));
  }
}
