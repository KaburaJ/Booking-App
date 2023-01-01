import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/widgets/column_layout.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(10),
            ),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: AppLayout.getHeight(86),
                      width: AppLayout.getHeight(86),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(10)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img2.jpg")))),
                  Gap(
                    AppLayout.getHeight(10),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Book Games", style: Styles.headLineStyle),
                        Gap(AppLayout.getHeight(2)),
                        Text("Kabura Creates",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500)),
                        Gap(AppLayout.getHeight(8)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: Color(0xFFFEF4F3),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(3),
                              vertical: AppLayout.getHeight(3)),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffa6489e),
                                ),
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Gap(AppLayout.getHeight(6)),
                              Text("Premium Status",
                                  style: const TextStyle(
                                      color: Color(0xffa6489e),
                                      fontWeight: FontWeight.w600)),
                              Gap(AppLayout.getHeight(6)),
                            ],
                          ),
                        )
                      ]),
                  const Spacer(),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print("Tou are tapped");
                        },
                        child: Text("Edit",
                            style: Styles.textStyle.copyWith(
                                color: Styles.orangeColor,
                                fontWeight: FontWeight.w300)),
                      ),
                    ],
                  )
                ],
              ),
              Gap(
                AppLayout.getHeight(8),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(
                AppLayout.getHeight(8),
              ),
              Stack(children: [
                Container(
                    height: AppLayout.getHeight(90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffa42d87),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)))),
                Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 18, color: Color(0xff7e1154))),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(
                              FluentSystemIcons
                                  .ic_fluent_lightbulb_filament_filled,
                              color: Color(0xffa42d87),
                              size: 27),
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New reward!",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text("9 games booked already!",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.9)))
                          ],
                        )
                      ]),
                )
              ]),
              Gap(
                AppLayout.getHeight(25),
              ),
              Text("Accumulated Games", style: Styles.headLineStyle2),
              Gap(
                AppLayout.getHeight(20),
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Styles.primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Gap(
                        AppLayout.getHeight(8),
                      ),
                      Text("193745",
                          style: TextStyle(
                              fontSize: 45,
                              color: Styles.bgColor,
                              fontWeight: FontWeight.w600)),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Games Played",
                            style: Styles.headLineStyle4.copyWith(fontSize: 16),
                          ),
                          Text(
                            "31 Dec 2022",
                            style: Styles.headLineStyle4.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "23",
                            secondText: "Games",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "MPESA",
                            secondText: "Payment from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "2",
                            secondText: "Games",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "PayPal",
                            secondText: "Payment from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "0",
                            secondText: "Games",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "Bank",
                            secondText: "Payment from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Container(
                          child: Column(children: [
                        Gap(
                          AppLayout.getHeight(8),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                      ]))
                    ],
                  ))
            ]));
  }
}
