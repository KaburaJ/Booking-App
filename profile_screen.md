## **Profile Screen**
The final screen of our appplication is next. Still within the `screens` folder, create a file. You may opt to name it `profile_screen.dart`, or not. 

```dart
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/widgets/column_layout.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
```
As is the norm, we are importing the relevant libraries

```dart
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // content goes here
    );
  }
}
```
This code creates a `Scaffold` widget which is a basic layout structure in Flutter. It provides several features such as a `app bar`, a `drawer`, and a `floating action button`. It has a single child, which is a widget that represents the content of the screen.
</br>
</br>

```dart
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
 ```
This code is defining a "Scaffold" widget with a white background color, and a single child, which is a `ListView` widget. The `ListView` has padding and a single child, which is a row widget with two children. The first child is a container widget with a height and width of 86 pixels, and a decoration that includes a rounded corner border and an image. The second child is a gap widget with a fixed height of 10 pixels.
</br>
The container widget has a single child, which is an image widget displaying the image specified by the "assets/images/img2.jpg" asset. The image is displayed within the container with a rounded corner border. The gap widget is likely used to add some space between the container and the next widget.
 ```dart
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
```
This code defines a column widget with three children. The first child is a text widget displaying the string "Book Games" with a style defined by the `headLineStyle` constant. The second child is a gap widget with a fixed height of 2 pixels, and the third child is a text widget displaying the string "Kabura Creates" with a custom text style.
</br>
The column also has two named parameters set: `crossAxisAlignment` and `mainAxisAlignment`. `crossAxisAlignment` is set to `start`, so the children will be aligned along the start of the column, and `mainAxisAlignment` is set to `start`, so the children will be aligned along the start of the main axis.
</br>
The column has a single grandchild, which is a container widget with a single child, which is a gap widget with a fixed height of 8 pixels. The container has a decoration with a rounded corner border and a light pink background color.

```dart
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
```
This code defines a `row` widget with three children as a child of the `container` widget. The row has a single grandchild, which is a gap widget with a fixed height of 6 pixels.
</br>
The first child of the row is a container widget with a single child, which is an icon widget. The container has padding and a decoration with a circular shape and a dark purple background color. The icon widget displays a shield icon in white color and has a size of 15 pixels.
</br>
The second child of the row is a `gap` widget with a fixed height of 6 pixels, and the third child is a text widget displaying the string "Premium Status" with a dark purple color and a font weight of 600.
</br>
*The code snippets above create a layout for a profile screen in a Flutter app. It has a `header` with an image, name, and username. It also has a section for a premium status badge, which is a purple circle with a white shield icon. The header is a Row with a circular image on the left and the name, username, and premium status badge on the right. The premium status badge is a Container with a purple background and white shield icon.*
```dart
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
```
This code is creating a layout with a `spacer` and a column with a single `InkWell` widget. The InkWell widget is a non-visual widget that provides gesture recognition. When the user taps on it, the `onTap` callback is triggered and the print statement is executed. The InkWell widget has a single child, which is a `Text` widget that displays the text "Edit" in orange and with a weight of 300.
</br>

## Outcome
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2018.PNG)
</br>
</br>
</br>


```dart
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
 ```
The code above defines a `gap` widget with a fixed height of 8 pixels as a child of the `ListView` widget, followed by a divider widget with a grey color, and another gap widget with a fixed height of 8 pixels.
</br>
The code also defines a `stack` widget with a single child, which is a container widget. The stack widget has a single grandchild, which is a positioned widget.
</br>
The `container` widget has a fixed height of 90 pixels and a width of `double.infinity`, so it will take up all the available horizontal space. It also has a decoration with a dark purple background color and rounded corners.
</br>
The `positioned` widget is positioned 45 pixels to the right and 40 pixels from the top of the container widget. It has padding and a decoration with a transparent color, a circular shape, and a border with a width of 18 pixels and a dark purple color.
 ```dart
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
  ```
This code defines a `container` widget with a single child, which is a row widget. The container has padding and the row widget has two children and one grandchild.
</br>
The first child of the row widget is a `circle avatar` widget with a single child, which is an icon widget. The circle avatar widget has a maximum radius of 25 pixels and a white background color. The icon widget displays a lightbulb icon in dark purple color and has a size of 27 pixels.
</br>
*The code snippets above define a Flutter widget for displaying a message about a new reward. The widget consists of several UI elements stacked together: a gap, a divider, another gap, and then a stack containing a container with a circular background color and border radius, another container with a transparent background and border, and a third container with padding and containing a row with an avatar icon, a gap, and a column of text. The avatar icon is a light bulb and the text includes a headline and a subheadline. The text and the avatar icon are both white, while the background container has a color of Color(0xffa42d87), which is a shade of pink.*

# Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2019.PNG)
</br>
</br>

```dart
Gap(
                AppLayout.getHeight(25),
              ),
              Text("Accumulated Games", style: Styles.headLineStyle2),
              Gap(
                AppLayout.getHeight(20),
              ),
 ```
The code snippet above creates:
* A `gap` with a height of 25 logical pixels.
* A `text` element with the text "Accumulated Games" and a particular style defined by Styles.headLineStyle2.
* Another `gap` with a height of 20 logical pixels.
</br>
## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2020.PNG)
</br>
</br>
</br>
 The following code creates:
```dart
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
```
A container that has some `padding`, a rounded border, a solid `color` background, and a `box shadow`. It also has a single child, which is a column widget containing a gap and a text widget. The text widget displays the string "193745" with a font size of 45 and a white color, and is given a font weight of "w600", which is a slightly bolder weight than the default.
```dart
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
 ```
Another `column` widget as a child of the `container`. This `column` has several `children`: a `gap`, a row widget with two text widgets, and another gap. The row widget has mainAxisAlignment set to `spaceBetween`, which means that the two children will be positioned at the beginning and end of the row, with space evenly distributed between them. The `text` widgets display the strings "Games Played" and "31 Dec 2022", respectively, with a font size of 16 and a style defined by the `headLineStyle4` constant. The column also has a divider widget as a child, which will display a horizontal line with a grey color.
 ```dart
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
  ```
A row widget with two children, each of which is an instance of a custom `AppColumnLayout` widget. The row has mainAxisAlignment set to `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.
</br>
The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The `firstText` and `secondText` parameters specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget.
  ```dart
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
 ```
Another row widget with two children, each of which is an instance of the `AppColumnLayout` widget. The row has mainAxisAlignment set to `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.

The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The `firstText` and `secondText` parameters probably specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget. 

This code also includes a `divider` widget as a child of the column, which will display a horizontal line with some shade of `grey` color.
 ```dart
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
 ```
The remainder of the children of the container widget. It includes another row widget with two children, each of which is an instance of the `AppColumnLayout` widget. The row has mainAxisAlignment set to `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.
</br>
The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The "firstText" and `secondText` parameters specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget. 
</br>
This code also includes another divider widget as a child of the column, and a container widget with a single child, which is a column widget containing a gap and a divider widget.


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2021.PNG)
</br>
</br>
</br>
