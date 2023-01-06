## **Search Screen**

This screen is what the user sees when the search icon on the bottom bar is tapped.
</br>


```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/widgets/game_tabs.dart';
import 'package:kaburacreates/widgets/icon_text_widget.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';
```
* We begin by importing relevant libraries.
</br>


```dart
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
 ```
We then define a `SearchScreen` widget, which is a StatelessWidget. The `SearchScreen` widget overrides the `build` method, which is called whenever the widget needs to be displayed.

The `build` method creates a `Scaffold` widget, which provides a white background and a basic layout structure. The `Scaffold` has a single child, a `ListView` widget. The ListView has padding applied to its horizontal and vertical edges, using the `EdgeInsets.symmetric` method. The padding values are calculated using the `AppLayout.getWidth` and `AppLayout.getHeight` methods, which are used to scale the padding values based on the size of the screen.

The `ListView` has two children: a `Gap` widget and a `Text` widget. The Gap widget adds some vertical space between the Text widget and the previous widget in the list. The Text widget displays the message `"What are you looking for?"`, and has a style defined by the `Styles.headLineStyle` property, with the font size adjusted using the `AppLayout.getHeight` method.
</br>


## Outcome:
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%205.PNG)
</br>


```dart
Gap(AppLayout.getHeight(20)),
              const AppGameTabs(
                  firstTab: "Game Tickets", secondTab: "View all"),
              Gap(AppLayout.getHeight(25)),
 ```
Having gotten our expected result, we create some room for the next widget. Thus, the first `Gap` widget adds some vertical space with a height of 20 pixels.
The `AppGameTabs` widget is a custom widget that displays two tabs with some text labels. It takes two named arguments: `firstTab `and `secondTab`.
The second `Gap` widget adds more vertical space with a height of 25 pixels between the search bar and the rest of the widgets.
</br>


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%206.PNG)
</br>
</br>

```dart
const AppIconText(
                icon: Icons.gamepad_outlined,
                text: "Single Player",
              ),
              Gap(AppLayout.getHeight(20)),
              const AppIconText(
                  icon: Icons.gamepad_outlined, text: "Multi Player"),
              Gap(AppLayout.getHeight(25)),
```
We then display two `AppIconText` widgets and some gap widgets in between them. The `AppIconText` widgets are displaying an icon using `Icons.gamepad_outlined` package and the text. The gap widgets are adding some space between the `AppIconText` widgets.
</br>

## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%207.PNG)
</br>
</br>

```dart
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
   ```
   
A new `Container` widget with some `padding`, a `background color`, a `border radius`, and a single child widget (a `Text` widget) is then constructed. 
</br>
The `padding` property specifies the amount of space that should be added inside the container. The `EdgeInsets.symmetric` method creates an EdgeInsets object with symmetrical vertical and horizontal padding. The `vertical` padding is determined by the value returned by `AppLayout.getWidth(15)` and the `horizontal` padding is determined by the value returned by `AppLayout.getHeight(15)`. 
</br>
The `decoration` property specifies a `background color` and a `border radius` for the container. The `background color` is specified using a 32-bit hexadecimal value (0xff7e1154), which represents a reddish purple color. The `border radius` is determined by the value returned by `AppLayout.getWidth(10)`. This value is passed to the `BorderRadius.circular` method, which creates a border radius with a circular shape.
</br>
The `child` property specifies a single child widget for the `container`, which is a `Text` widget that displays the text "find games" in white. The `style` property specifies the `text style` for the `Text` widget, which is a `copy` of the `Styles.textStyle` object with the color set to white.

## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%208.PNG)
</br>
</br>

```dart
Gap(AppLayout.getHeight(40)),
              const AppDoubleTextWidget(
                  bigText: "Available Games", smallText: "View all"),
              Gap(AppLayout.getHeight(15)),
```

A new instance of the `AppDoubleTextWidget` widget is introduced and it displays two pieces of text: "Available Games" and "View all". The `bigText` property specifies the text to display in a larger font size and the `smallText` property specifies the text to display in a smaller font size. The `const` keyword indicates that this widget is a constant and its value cannot be changed after it is initialized.
</br>

## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%209.PNG)
</br>
</br>

```dart
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
 ```
 
The code above creates a `Row` widget with a single child `container` widget. The `Row` widget has its `mainAxisAlignment` property set to `MainAxisAlignment.spaceBetween`, which will align its children such that there is an equal amount of space between the children and the start and end of the row.
</br>
This `container` widget has a fixed height (determined by the value returned by `AppLayout.getHeight(425)`), a fixed width (determined by `size.width * 0.42`), some `padding`, a white `background color`, a rounded `border`, and a `box shadow`. The `container` has a single `child`, which is a `Column` widget with three `children`: a `container` with a `background image`, a `Gap` widget, and a `Text` widget.
</br>

The first `containe`r has a fixed `height` (determined by the value returned by `AppLayout.getHeight(190)`) and a `background image` that is specified using the `DecorationImage` class. The `borderRadius` property gives the container rounded corners with a radius determined by the value returned by `AppLayout.getHeight(12)`.
</br>

The `Gap` widget adds some space between the first container and the Text widget. The `Text` widget displays some text with a `style` specified by the `Styles.headLineStyle2` object, which has had its color property set to black.
</br>

## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2010.PNG)
</br>
</br>
</br>

```dart
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
 ```
 
This code creates a Column widget with a single child, a Stack widget.
</br>
The `Stack` widget has two `children`: a `container` widget and a `positioned` widget. The `container` widget has a fixed `width` (determined by `size.width * 0.44`), a fixed `height` (determined by the value returned by `AppLayout.getHeight(184)`), a purple `background color`, rounded corners, some `padding`, and a single child `column` widget.
</br>

The `column` widget has a single cross axis `alignment` (`CrossAxisAlignment.start`) and two `children`: a `Text` widget and a `Gap` widget. The `Text` widget displays some text with a bold white font and the Gap widget adds some space between the two Text widgets.
</br>

The `positioned` widget is positioned relatively to the `top-right` corner of the stack. It has a fixed distance from the right edge of the stack (determined by the value returned by `AppLayout.getWidth(-45)`) and a fixed distance from the top edge of the stack (determined by the value returned by `AppLayout.getHeight(-40)`). The `positioned` widget has a single `child`, a `container` widget with some `padding` and a circular border. The `container` has a transparent background `color` and a circular shape specified by the `BoxShape.circle` property. The border has a fixed width (determined by the value returned by `AppLayout.getWidth(18)`) and a purple color
</br>

## Outcome

![fig_1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2011.PNG)
</br>
</br>
</br>

```dart
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
  ```
 
This code creates a `Gap` widget and a `container` widget, both with fixed dimensions. The Gap widget is adding some space or gap between the widgets above and below it.
  </br>
This `container` widget has a fixed width (determined by `size.width * 0.44`), a fixed `height` (determined by the value returned by `AppLayout.getHeight(210)`), some `padding`, a pink background color, rounded corners, and a single child `column` widget. The `column` widget has two children: a `Text` widget and a `RichText` widget.
</br>
`RichText` is a widget that displays a paragraph of mixed-style text. It displays text that uses multiple different styles.

In the given code, the `RichText` widget displays three text spans, each with a different font size. The text spans are displayed in a row and the resulting text is a row of three hearts. The RichText widget allows you to specify the style for each span of text separately, so you can have a paragraph of mixed-style text without having to break it up into multiple Text widgets.
</br>
*The emoticons can be assessed via your PC's keyboard*

## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2012.PNG)
</br>
</br>
</br>
</br>
