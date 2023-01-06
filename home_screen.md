## **Home Screen**

Looking at the homescreen UI [here](https://kaburaj.github.io/Booking-App), there's:
* some form of `text`. Furthermore, the text is of varying fontsize.
* an `image` at the top right corner
* a `search bar` that has a search icon and the word 'search' on it
* The `text` 'Available Games' and 'View all' on the same row but at the beginning and end respectively
* A `scrollable section` (we'll employ some sort of ListView widget). Worth noting is that this section is scrollable horizontally.
* The `text` 'Games' and 'View all' on the same row but at the beginning and end respectively
* Another `scrollable section` that has some images and text.
* Lastly, there is a `bottom bar` that contains four icons namely: the 'home', 'search', 'games' and 'profile' icons which are clickable.
These subsequent sections will be reproducing this UI which, when completed, will make up our homescreen.
</br>

A file is created in  the `screens`` folder and named `home_screen.dart` Here's the procedure followed in this project:
</br>
</br>

```dart
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kaburacreates/screens/games_screen.dart';
import 'package:kaburacreates/utils/app_info_list.dart';
import 'package:kaburacreates/widgets/double_text_widget.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import 'games_view.dart';
```
* Importing our libraries

</br>


```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
              child: Column(children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          Gap(AppLayout.getHeight(5)),
                          Text("Book Games",
                              style: Styles.headLineStyle
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Container(
                          width: AppLayout.getWidth(50),
                          height: AppLayout.getHeight(50),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15)),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img2.jpg"),
                            ),
                          ))
                    ]),
 ```
-Creating a widget that has a `Scaffold` as the root element and a `ListView` with a single child `Container` inside. The `Container` has some padding on the left and right sides, and a `Column` as a child. The `Column` has two children: a `Row` and a `Gap` widget. The `Row` widget has two children: two `Column` widgets. Each of these `Column` widgets has two children: a `Text` widget with a greeting message and a title, and a `Gap` widget. The `Text` widgets have different styles applied to them.
</br>
</br>
In this code, a `Container` widget is added as a second child of the `Row` widget. The `Container` has a width and height specified in terms of a function `AppLayout.getWidth` and `AppLayout.getHeight`. It also has a `BoxDecoration` with a border radius and an image as its background image. The image is specified using an `AssetImage` widget. The `Container` is decorated with a rounded border with a radius equal to 15 pixels of its height. The image will be scaled to cover the entire `Container`, and any parts of the image that do not fit within the container will be cropped.
</br>


_PS: To be able to include images in the project, a new ```folder``` should be created in the file explorer. This folder should be named ```assets``` and the application's images uploaded to it. The ```pubspec.yaml``` file should be edited such that it resembles this: _

```dart
# The following section is specific to Flutter.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
   - assets/images/
  #  - images/a_dot_ham.jpeg
```
</br>

For the ```search bar```, the following code was used:

```dart
Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12)),
                  child: Row(children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xff7e1154)),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ]),
                ),
  ```
= Adding a `Gap` widget with a height equal to 25 pixels of the height of the screen, and a `Container` widget below it. The `Container` has a `BoxDecoration` with a border radius and a solid color specified. It also has some `padding` specified using `EdgeInsets.symmetric`. The `Container` has a single child, a `Row` widget with two children: an `Icon` and a `Text` widget. The `Icon` is a search icon with a specific color, and the `Text` widget has a specific style applied to it. The `Row` widget is used to display the search icon and the "Search" text in a horizontal arrangement.
</br>


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%201.PNG)
</br>

```dart
 Gap(AppLayout.getHeight(40)),
                const AppDoubleTextWidget(
                    bigText: "Available Games", smallText: "View all")
              ]),
            ),
```
- Adding a `Gap` widget with a height equal to 40 pixels of the height of the screen, and an `AppDoubleTextWidget` below it. The `AppDoubleTextWidget` is a custom widget that displays two pieces of text, a larger one and a smaller one, stacked horizontally. The larger text is specified using the `bigText` parameter, and the smaller text is specified using the `smallText` parameter. In this case, the `bigText` is set to "Available Games" and the `smallText` is set to "View all".
</br>


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%202.PNG)
</br>


```dart
Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                child: Row(
                  children: gameList
                      .map((list) => GameView(
                            list: list,
                          ))
                      .toList(),
                )),
 ```
- Including a `Gap` widget with a height equal to 15 pixels of the height of the screen, and a `SingleChildScrollView` widget below it. The `SingleChildScrollView` is a scrollable widget that has a single child. It is used to display a horizontal list of widgets. The `scrollDirection` property of the `SingleChildScrollView` is set to `Axis.horizontal`, indicating that the list should be scrollable horizontally. The `SingleChildScrollView` has some padding on the left side and a `Row` widget as its child. The `Row` widget has multiple children, which are generated using the `map` function applied to the `gameList` list. Each element in the `gameList` list is passed to a custom `GameView` widget, which is then added to the list of children for the `Row` widget. The resulting list of widgets is then converted to a list of widgets using the `toList` function. The resulting list of widgets is then displayed in a horizontal arrangement and can be scrolled horizontally.
</br>

 
 ## Outcome
 
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%203.PNG)
</br>


```dart
Gap(AppLayout.getHeight(15)),
            Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                child: const AppDoubleTextWidget(
                    bigText: "Games", smallText: "View all")),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                child: Row(
                    children: GameList.map((game) => GamesScreen(game: game))
                        .toList())),
  ```
  
- Creating a `SingleChildScrollView` widget that displays a horizontally scrolling list of `GamesScreen` widgets. The `GamesScreen` widgets are created using a `map` function that iterates over a list called `GameList` and creates a new `GamesScreen` widget for each element in the list. The GamesScreen widget takes a single argument called game, which is passed as a named argument when creating the widget.

The code also includes a `Container` widget that has a child widget called `AppDoubleTextWidget`, which takes two named arguments: `bigText` and `smallText`.
</br>


Finally, there are several instances of the `Gap` widget, which are used to add some vertical space between the various widgets in the layout. The Gap widget takes a single argument that specifies the height of the gap. The `AppLayout.getHeight` method is used to calculate the gap height.
</br>


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%204.PNG)

</br>
</br>

That's our homescreen! Let us head on over to the [search screen](https://github.com/KaburaJ/Booking-App#search-screen).
