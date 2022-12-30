import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/widgets/game_tabs.dart';
import 'package:kaburacreates/widgets/icon_text_widget.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "What are\nyou looking for?",
                style: Styles.headLineStyle
                    .copyWith(fontSize: AppLayout.getHeight(35)),
              ),
              Gap(AppLayout.getHeight(20)),
              const AppGameTabs(
                  firstTab: "Game Tickets", secondTab: "View all"),
              Gap(AppLayout.getHeight(25)),
              const AppIconText(
                icon: Icons.gamepad_outlined,
                text: "Single Player",
              ),
              Gap(AppLayout.getHeight(20)),
              const AppIconText(
                  icon: Icons.gamepad_outlined, text: "Multi Player"),
              Gap(AppLayout.getHeight(25)),
              Container(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(15),
                      horizontal: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                    color: Color(0xff7e1154),
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  ),
                  child: Center(
                    child: Text(
                      "find games",
                      style: Styles.textStyle.copyWith(color: Colors.white),
                    ),
                  )),
              Gap(AppLayout.getHeight(40)),
              const AppDoubleTextWidget(
                  bigText: "Available Games", smallText: "View all"),
              Gap(AppLayout.getHeight(15)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                    height: AppLayout.getHeight(425),
                    width: size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      children: [
                        Container(
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(12)),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/img7.jpg")))),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          "20% discount on the first 10 people to book via the app!",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black),
                        )
                      ],
                    )),
                Column(children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(184),
                        decoration: BoxDecoration(
                            color: Color(0xffa42d87),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text("Take the survey and get discount",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                            ]),
                      ),
                      Positioned(
                        right: AppLayout.getWidth(-45),
                        top: AppLayout.getHeight(-40),
                        child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: AppLayout.getWidth(18),
                                    color: Color(0xff7e1154)),
                                color: Colors.transparent)),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xffde58bd)),
                    child: Column(children: [
                      Text("Take love",
                          style: Styles.headLineStyle2.copyWith(
                              //fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                      Gap(AppLayout.getHeight(5)),
                      RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 20)),
                          TextSpan(text: '😍', style: TextStyle(fontSize: 35)),
                          TextSpan(text: '😍', style: TextStyle(fontSize: 20)),
                        ],
                      ))
                    ]),
                  )
                ])
              ])
            ]));
  }
}
