## **Games ticket view**

Within the `screens` folder, create a file. I named mine the `games_ticket_view.dart`
</br>

```dart
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
```
As usual, we'll first import the relevant libraries
##
</br>
</br>

```dart
class GamesTicketView extends StatelessWidget {
  const GamesTicketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
 ```
The `GamesTicketView` is a `stateless` widget that displays a `Scaffold` widget. 

The `GamesTicketView` class extends the `StatelessWidget` class and overrides the `build` method to return a `Scaffold` widget. It also has a constructor that takes an optional `Key` argument and passes it to the superclass constructor. The `build` method also gets the `size` of the screen from the `AppLayout` utility class and stores it in the `size` variable.
</br>
</br>

```dart
 Scaffold(
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
 ```
This code creates a `Scaffold` widget with a fixed background color and a single child, a Stack widget.
</br>
The Stack widget has a single child, a `ListView` widget. The ListView widget has some padding, a single child Gap widget, and a Text widget.
</br>
The `Gap` widget adds some space between the widgets above and below it. The Text widget displays a fixed string of text with a predefined style.
</br>
The `ListView` widget also has a `padding` property that adds some space around the widget. The padding property takes an EdgeInsets object as its value. The EdgeInsets object is constructed using the EdgeInsets.symmetric constructor and takes two arguments: horizontal and vertical. The horizontal argument specifies the padding on the left and right sides of the widget and the vertical argument specifies the padding on the top and bottom sides of the widget. The padding values are determined by the `AppLayout.getHeight` utility method.

</br>
## Outcome


![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2013.PNG)
</br>
</br>

```dart
const AppGameTabs(
                      firstTab: "Upcoming", secondTab: "Previous"),
                  Gap(AppLayout.getHeight(20)),
               
```
This code creates a `AppGameTabs` widget, a `Gap` widget, and a `Container` widget with a single child, a `GameView` widget.
</br>
The `AppGameTabs` widget displays two tabs with fixed titles. 
</br>
## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2014.PNG)
</br>
</br>
</br>
```dart
Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: GameView(
                      list: gameList[0],
                      isColor: true,
                    ),
                  ),

```
This code creates a `Container` widget with some padding and a single child, a `GameView` widget.
</br>
The `Container` widget has a padding property that adds space around the widget. The `padding` property takes an `EdgeInsets` object as its value and the EdgeInsets object is constructed using the `EdgeInsets.only` constructor. The EdgeInsets.only constructor takes an EdgeInsets argument that specifies the padding on specific edges of the widget. In this case, the padding is only added to the left edge of the widget.
</br>
The `GameView` widget displays a list of games. It has two properties: `list` and `isColor`. The list property specifies the list of games to display and the isColor property determines whether the background color of the widget should be applied or not.
##
</br>
## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2015.PNG)

```dart
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
```
This code defines a `SizedBox` widget with a fixed height of 1 pixel, and a container widget with white background color and padding. The container has a single child, which is a column widget containing a row widget with two children, each of which is an instance of the `AppColumnLayout` widget, and a gap widget. The row has `mainAxisAlignment` set to `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.
</br>
The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The `firstText` and `secondText` parameters specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget. The `isColor` parameter is a boolean that determines whether the widget is colored or not.
</br>
The column also includes a gap widget and an instance of a custom `AppLayoutBuiderWidget` widget as children. This widget is used to build some kind of layout or display some UI elements. It has three named parameters: `sections`, `isColor`, and `width`. The `sections` parameter specifies the number of sections in the widget, while the `isColor` parameter controls the coloring of the widget. The `width` parameter does control the width of the widget or some other aspect of its appearance.

```dart
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
  ```
This code defines a gap widget and a row widget with two children, each of which is an instance of the `AppColumnLayout` widget, as children of the container's column widget. The row has mainAxisAlignment set to `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.
</br>
The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The `firstText` and `secondText` parameters specify the text to be displayed, while the "alignment" parameter controls the alignment of the text within the widget. The `isColor` parameter is a boolean that determines whether the widget is colored or not.
</br>
This code also includes another gap widget and an instance of the `AppLayoutBuiderWidget` widget as children of the column. It has three named parameters: `sections`, `isColor`, and `width`. The `sections` parameter specifies the number of sections in the widget, while the `isColor` parameter controls the coloring of the widget. The `width` parameter controls the width of the widget or some other aspect of its appearance.

  ```dart
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
   ```
   
This code defines a `row` widget with two children as a child of the container's column widget. The row has mainAxisAlignment set to  `spaceBetween`, so the two children will be evenly distributed at the beginning and end of the row.
</br>
The first child is a column widget with three children: a row widget containing an image and a text widget, a gap widget, and another text widget. The row widget has two children: an image widget and a text widget. The image widget displays the image specified by the `"assets/images/img1.jpg"` asset, and the text widget displays the string `"*** 2712"` with a style defined by the `headLineStyle3` constant. The second child of the column is a gap widget with a fixed height of 5 pixels, and the third child is a text widget displaying the string `Payment method` with a style defined by the `headLineStyle4` constant.
</br>
The second child of the row is an instance of the `AppColumnLayout` widget. It has four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. It's likely that this widget displays two pieces of text and allows some customization of the text alignment and coloring. The `firstText` and `secondText` parameters probably specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget. The `isColor` parameter might be a boolean that determines whether the widget is colored or not.

   ```dart
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
  ```
This code defines a `SizedBox` widget with a fixed height of 1 pixel, and a container widget with white background color and rounded bottom corners. The container has a single child, which is another container widget with padding and a single child, which is a `ClipRRect` widget. The `ClipRRect` widget has a single child, which is an instance of a custom `BarcodeWidget` widget.
</br>
The `BarcodeWidget` widget is used to display a barcode image. It has several named parameters: `barcode`, `data`, `drawText`, `color`, `width`, and `height`. The `barcode` parameter specifies the type of barcode to be generated, `data` specifies the data to be encoded in the barcode, `drawText` is a boolean that determines whether text should be drawn below the barcode image, `color` specifies the color of the barcode image, `width` specifies the width of the widget, and `height` specifies the height of the widget. In this case, the "BarcodeWidget" is set to display a Code 128 barcode, encoded with the data `"https://github.com/martinovovo"`, in black color, with no text below the image and with a width and height of 70 pixels.
</br>
*For the `barcode` to be created, a package has to be imported onto the `dev_dependencies` section of the `pubspec.yaml` file. Once done, your file should resemble this:*

```dart
dev_dependencies:
  flutter_test:
    sdk: flutter

  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^1.0.0
  barcode_widget: ^2.0.2
```
</br>
## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2016.PNG)
</br>
</br>
</br>

```dart
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
 ```
 </br>
This code creates several widgets including a `Gap` widget, a `Container` widget, and two `Positioned` widgets.
</br>
The `Gap` widget adds some space between the widgets above and below it.
</br>
The `Container` widget has some padding and a single child, a GameView widget. The GameView widget displays a list of games. It has a single property: list, which specifies the list of games to display.
</br>
The `Positioned` widgets are used to position their children within their parent widget. They have a left and top property that determine the position of the child within the parent. The Positioned widgets have a Container widget as their child. The `Container` widget has some padding and a BoxDecoration that adds a border around it. It also has a single child, a `CircleAvatar` widget. The CircleAvatar widget displays an avatar in the form of a circle. It has a maxRadius property that determines the size of the avatar and a backgroundColor property that specifies the background color of the avatar.
 </br>
 ## Outcome
 
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2017.PNG)

The [profile screen](https://github.com/KaburaJ/Booking-App/blob/main/profile_screen.md#profile-screen), the last screen of our app, is next.
</br>
</br>
</br>
</br>
