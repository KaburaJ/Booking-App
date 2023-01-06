*Detour:
</br>
Remember our info list that was to act like our makeshift database? Well, we shall retrieve data from it in this short segment that may seem like a detour but is actually very important. In the `screen` folder, we shall create a new file. We can name it `game_view.dart`. It should contain the following code:*
```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:kaburacreates/utils/app_layout.dart';
import 'package:kaburacreates/widgets/layout_builder_widget.dart';
import 'package:kaburacreates/widgets/thick_container.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
```
*First, we import our libraries*
```dart
class GameView extends StatelessWidget {
  final Map<String, dynamic> list;
  final bool? isColor;
  const GameView({Key? key, required this.list, this.isColor})
      : super(key: key);
```
*Then, we define a class called `GameView` which extends the `StatelessWidget` class. The `GameView` class has two final properties: `list` and `isColor`.
</br>
The `list` property is of type `Map<String, dynamic>` and is required when constructing an instance of `GameView`. The `isColor` property is of type `bool?` (a nullable boolean) and is not required when constructing an instance of `GameView`.*

```dart
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
 ```
 *The `build` method of the `GameView` class is created. In this case, the `build` method first retrieves the device's screen size using the `AppLayout.getSize` method and passing in the `context` argument. It then returns a "SizedBox" widget, which is a widget that has a fixed size. The width of the `SizedBox` widget is set to 85% of the screen width, and the height is set to a fixed value that is dependent on the platform.
</br>
Inside the `SizedBox` widget, there is a `Container` widget which has a `Column` widget as its child. The `Container` widget has a `BoxDecoration` with a background color that is either white or a light shade of pink (depending on the value of the `isColor` property) and rounded corners at the top. The `Container` widget also has some padding around its content.*

```dart
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
```
*We then define a layout for a widget that is made up of a `Column` with a single `Row` as its child. The `Row` has several `children`: a `Text` widget, two `Expanded` widgets with `Containers` as their `children`, two `ThickContainer` widgets, and another `Text` widget. The Text widgets are displaying text from the `list` parameter, which is a `map of dynamic values`. The `Expanded` widgets with `Containers` as their children are taking up all the remaining space in the row, while the `ThickContainer` widgets are fixed-width widgets. 
</br>
The `isColor` parameter is used to determine the text style for the `Text` widgets. If `isColor` is null, the text `style` will be `Styles.headLineStyle3` with the `text color` set to `black`. If `isColor` is not null, the `text style` will be `Styles.headLineStyle3` with the `default` text color. The `AppLayoutBuiderWidget` widget is a custom widget that creates a `row` of `sections` with a fixed width.*

```dart
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
```
*A `column` widget that contains a `row` widget and two other widgets is created. The `row` widget contains several children widgets which include `Text` widgets, an `Expanded` widget with an empty `container` child, a `ThickContainer` widget, another `Expanded` widget with an `SizedBox` widget as the child, another `ThickContainer` widget, another `Expanded` widget with an empty container child, and another `Text` widget. The two other widgets are a `Gap` widget with a height of 3 pixels and another `row` widget with three children widgets which include two `SizedBox` widgets with `Text` widgets as children.*

```dart
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
  ```
*This code is creating a `container` with a colored background. The color of the background is determined by the `isColor` parameter. If `isColor` is `null`, then the `background color` is set to `Styles.orangeColor`. Otherwise, the `background color` is set to `Color(0xff161616)`, which is a shade of `black`.
</br>
Inside this `container`, there is a single `row` containing a `SizedBox` widget. The `SizedBox` has a height of `AppLayout.getWidth(20)` and a `width` of `AppLayout.getWidth(10)`. The `SizedBox` also has a `DecoratedBox` as its child. The `DecoratedBox` has a `decoration` which includes a colored background and rounded corners. The color of the background is determined by the `isColor` parameter. If `isColor` is `null`, then the background color is set to `Colors.grey.shade200`. Otherwise, the background color is set to `Colors.white`. The rounded corners have a `radius` of `AppLayout.getHeight(10)`.*

```dart
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
```
*This code is building a `row` with three elements:*
</br>
1. *A `text` widget that displays the value of the `code` field in the `001_Available` object of the `list` map. The `text style` for this widget is determined by the `isColor` bool value. If `isColor` is `null`, the `text style` is `Styles.headLineStyle3` with the `color` set to `black`. If "isColor" is `not null`, the `text style` is `Styles.headLineStyle3` with no color modification.
2. A `ThickContainer` widget with its `isColor` field set to true.
3. A `row` of `AppLayoutBuiderWidget` widgets with `sections` set to 6 and no other properties set.
4. Another `ThickContainer` widget with its "isColor" field set to true.
5. A `text` widget that displays the value of the `code` field in the `002_Available` object of the `list` map. The `text style` for this widget is determined by the `isColor` bool value. If `isColor` is null, the text style is `Styles.headLineStyle4` with the colour set to `black`. If `isColor` is not null, the text style is `Styles.headLineStyle3` with no colour modification.*

```dart
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
```

*This code is creating a `SizedBox` widget with a `width` of 10 logical pixels and a `height` of 20 logical pixels. The `SizedBox` widget is then decorated with a `BoxDecoration` that sets its color to either `Colors.grey.shade200` or `Colors.white` depending on the value of the `isColor` boolean parameter. The `BoxDecoration` also sets the border radius of the `SizedBox` widget to have rounded corners on the top-left and bottom-left edges. The `SizedBox` widget is then displayed on the screen.*

```dart
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
 ```
 
*Here, there is a `container` with a solid color background (either orange or white, depending on the value of isColor). It contains a `Column` with a single `Row` inside it. This `Row` contains three more `AppColumnLayout` widgets, which again display information about the game (date, time, and number of players). The `AppColumnLayout` widgets are used to display the information in a consistent way, with a label and a value aligned vertically. The isColor parameter determines whether the widget should use a light or dark color scheme.*

</br>
</br>
</br>
