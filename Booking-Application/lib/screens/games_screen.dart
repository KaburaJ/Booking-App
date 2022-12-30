import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/utils/app_layout.dart';
import 'package:kaburacreates/utils/app_styles.dart';

class GamesScreen extends StatelessWidget {
  final Map<String, dynamic> game;
  const GamesScreen({Key? key, required this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: AppLayout.getWidth(350),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(17)),
        margin: EdgeInsets.only(
            right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xfffbf0f0),
                  blurRadius: AppLayout.getHeight(2),
                  spreadRadius: AppLayout.getHeight(1))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: AppLayout.getHeight(180),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    color: Styles.primaryColor,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/${game['image']}")))),
            Gap(AppLayout.getHeight(10)),
            Text(
              game['game'],
              style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor),
            ),
            Gap(AppLayout.getHeight(5)),
            Text(
              game['type'],
              style: Styles.headLineStyle.copyWith(color: Color(0xff7e1154)),
            ),
            Gap(AppLayout.getHeight(8)),
            Text(
              game['price'],
              style: Styles.headLineStyle3.copyWith(color: Styles.khakiColor),
            ),
          ],
        ));
  }
}
