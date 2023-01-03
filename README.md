# Booking-App

This repository contains a booking app which targets gaming shops. This app can be accessed [here](https://kaburaj.github.io/Booking-App)

## Overview
This app, though currently more of a UI representation of the end goal, is supposed to be updated by the gaming shop owner. These changes are to be showcased in real time hence the app is dynamic nature. The clients, on the other hand, can now book the available games in advance instead of going to the shop and waiting in line, thus wasting time. To put a spin on it, I thought of categorizing the games in terms of availability and the number of players it requires. For example, the client might opt for a multi-player game at a certain time. This game will remain in the available games tab up until the maximum number of players for that game (usually 2) is reached. 

## Development
In the creation of this application, [Flutter](https://www.geeksforgeeks.org/what-is-flutter/), which supports cross-platform applications, was used. In my case, I used [FlutLab](https://flutlab.io/) in the execution of code initially. Afterwards, I incorporated VS Code in the final building and eventual deployment to Github pages. No special reason though, the choice of IDE was done based on preference.

## The Nitty Gritties
Setting up a [Flutter environment](https://flutter.io/get-started/editor/) On opening any Flutter IDE, one is welcomed by a screen with code already on it. In my case, it was the 'Hello World' project. For a smile's sake, I would advice one to run it, feel proud, press and hold Ctrl+A and delete. Mostly, the lib/main.dart is what will be edited.
Before diving into the code, certain key words have to be understood. They include:
1. **Widget** 
This feature is graphical and provides information through which a user can interact with an application. Widgets are of two types: **Stateless** and **stateful**.
- **Stateless** widgets refer to widgets which are immutable. Simply put, stateless widgets do not change even when there are obvious changes in the app such as variations in the input parameters. A good example is a text widget.
- A **stateful** widget changes in sync with the input data or parameters and are the complete opposite of stateless widgets. They are mutable.
Thus, in the selection of a stateless or stateful widget- which you will see plenty of times in this project, is entirely based on whether or not the UI at that particular instance is expected to change or not. Stateless, UI will not change. Stateful, UI might change. Well, you get the idea.
2. **Container**
From the word itself, a container is some sort of storage system. In Flutter, a container stores widgets which perform various functions such as displaying text, icons and images. It is useful for when these widgets are many and require to be arranged and positioned ina certain way as per the UI design. A container is a widget in its own capacity. It is referred to as a parent widget. It might be obvious, or not, that this parent widget requires a child widget. There are terms that are used within containers. They include:
- **Padding**
This widget creates empty space around a widget or a group of widgets. 
- **Margin**
This widget creates empty space around the container itself. In this way, it outlines the application's margin.
- **Row and Column**
Rows and columns are usually accompanied by children in the Flutter syntax. As such, a row displays its children in a horizontal manner whereas a column displays these children in a vertical manner.
- **CrossAxisAlignment and MainAxisAlignment**
When it comes to rows, the main axis is horizontal while the cross axis is perpendicular. The opposite is true for columns. Consequently, the terms CrossAxisAlignment and MainAxisAlignment vary in definition depending on whether one is referring to the row or column. However, both properties allow for positioning of widgets. 
- **Spacer()**
Allows for spacing in between widgets. In this project, the widget is replaced by Gap() which carries out a similar funtion.
- **Height and Width**
3. **Scaffold**
A scaffold provides the UI layout of an application's screen such as appbar and bottom navigation bar. Where this layout is to be used by default, the scaffold can wrap a container. 
Although a scaffold and container may seem to overlap in funtioning, a container is more flexible moreso when one is aiming at creating their own layout away from the defaults. 
4. **Flex**
We can refer to flex as a combination of row and column. It facilitates the positioning of widgets either in the vertical or horizontal axes. Unlike row and column which are fixed, flex is flexible.
6. **ListView**
ListView creates children in a list that can be scrolled though either vertically or horizontally.
8. **Stack**
When one wants widgets to overlap, a stack widget is used. 
9. **FittedBox**
When called, it creates a widget that scales and positions its child within itself
-All these keywords are used at one point or another in this particular project. Now that we have defined everything, we can now dive into the code itself.

PS: The UI/ layout design comes first before any coding can be done. 

### Let's Dive into it!

Looking at the homescreen UI [here](https://kaburaj.github.io/Booking-App), there's:
* some form of text. Furthermore, the text is of varying fontsize.
* an image at the top right corner
* a search space that has a search icon and the word 'search' on it
* The text 'Available Games' and 'View all' on the same row but at the beginning and end respectively
* A scrollable section (we'll employ some sort of ListView widget). Worth noting is that this section is scrollable horizontally.
* The text 'Games' and 'View all' on the same row but at the beginning and end respectively
* Another scrollable section that has some images and text.
* Lastly, there is a bottom bar that contains four icons namely: the 'home', 'search', 'games' and 'profile' icons which are clickable.
 
## **main.dart**

```dart
import 'package:flutter/material.dart';
import 'package:kaburacreates/screens/bottom_bar.dart';
import 'package:kaburacreates/utils/app_styles.dart';

void main() => runApp(const MyApp());
```

The main.dart file is a prerequisite for all Flutter applications and is where the program starts. It takes one main() function that excecutes any code within it. Simply put, it allows our widgets to be seen by the user. The runApp() method loads the app layout on the emulator's screen. Above it is a list of imports. Some like ```import 'package:flutter/material.dart'``` are standard libraries while others like ```import 'package:kaburacreates/screens/bottom_bar.dart'```are user-defined meaning that in the creation of this project, I created some libraries with the intent of reusing code. 

```dart
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  ```

It takes a widget as a parameter in which we ought to pass a root widget. In this case, ```MyApp``` is the widget.

```dart
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primaryColor: primary,
      ),
      // A widget which will be started on application startup
      home: const BottomBar(),
    );

```

The code above is our project's root. That means that it will be the parent widget for all others that follow. It will house our ```Container ``` , ```Scaffold``` among others. ```@override``` allows the overriding of the methods of the parent class. We are overriding the ```build()``` method which takes in the ```BuildContext``` object and returns a widget; ```MaterialApp``` which houses:
 - ```debugShowCheckedModeBanner: false``` hides the debug tag that appears by default on any emulator
 - the title: "Flutter Hello World"
 - a selected theme which, in this case, is the color named 'primary' 
 - The ```home``` widget which allows for one to define the place where the application begins when rerun. In this case, the ```BottomBar``` will be the first to be showcased.

Now that we've gone through the ```main.dart``` file, let's begin by setting up the bottom bar for easier reference.

## **bottom_bar.dart**

![Bottom Bar](https://github.com/KaburaJ/Booking-App/blob/main/images/Image003.PNG)

In the ```file explorer``` section of your IDE's interface, you will find the ```lib``` folder. This is where I created a folder named ```screens```. Within it, I created a ```bottom_bar.dart``` file.

![File Explorer](https://github.com/KaburaJ/Booking-App/blob/main/images/Image004.PNG)

```dart
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const GamesTicketView(),
    const ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
```

The first thing to do was to create a ```stateful widget``` which can be autogenerated by any Flutter IDE. It is as easy as right clicking or hitting some special keys. So once created, I renamed mine to ```BottomBar```. Which was referenced in the ```main.dart``` file. I think this is a good place to mention that importing the ```'package:flutter/material.dart'``` standard library should be standard practice for each file created to get rid of any errors. Our bottom bar contains the ```home```, ```search```, ```games``` and ```profile``` sections. They are the ones whic are references as ```HomeScreen()```, ```SearchScreen()```, ```GamesTicketView()``` and ```ProfileScreen()```. Each with a separate dart file. Additionally, an integer type variable, ```_selectedIndex``` has been initialized to zer. Why? Let's dive even deeper.

```dart
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
```

A function, ```_onItemTapped```, was then created. It takes an integer as an argument which is to be stored in the ```index``` variable. The ```setState``` function notifies the framework that the initial state of the object within it has changed. In this case, the object in question is the ```_selectedIndex``` which is re-initialized to the index input. 

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
```
We then return ```Scaffold```, again, for a default structure. Within it, there are several parameters.

```dart
body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
```

The first is the definition of the ```body```.  The ```Center``` widget is passed. It centers its child which in this case is the index of the list of icons on the bottom bar. Thus, in retrospect, each Icon in the bottom bar is assigned an index and the code snippet above centers each of these icons to provide an apealing feel.

```dart
bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: AppLayout.getHeight(10),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
```

```bottomNavigationBar``` is up next. It is within the scaffold. It allow for definition of parameters of the items that fo into the bottom bar. ```BottomNavigationBar``` takes a lot of parameters. The ones represented in the code snippet above are a handful of them. They include:
* ```currentIndex``` which stores the index of the current selected item on the bottom bar. It is assigned ```_selectedIndex``` which was initialized earlier.
* ```onTap``` which checks if any of the items on the bottom bar is selected. If yes, it is called.
* ```elevation``` which controls the size of the shadow behind the bottom bar. It is initialized to 10 pixels. However, 10 pixels may vary from phone to phone depending on size and other factors such as height. That is why the ```app_layout``` library was created. We shall take a look at it pretty soon!
* ```showSelectedLabels``` which is set to ```false``` meaning that, for instance, on selecting the home icon, the label ```home``` will not be shown.
* ```showUnselectedLabels``` which ensures that the labels of the icons, when unselected, remain unseen.
* ```selectedItemColor``` which is set to a blueGrey colour. Consequently, it is used to set the icon colour when tapped.
* ```type``` which is set to ```BottomNavigationBarType.fixed``` which ensures that the icons remain in their fixed positions and do not move haphazardly.
* ```unselectedItemColor``` which defines the colour of the icons when they are not selected.
* ```items``` which defines the appearance of the icons on the bottom bar. For this, instead of using the default icons in the material library, another library was imported. It is called the ```FluentSystemIcons``` library. To import this library, we head on to the ```pubspec.yaml``` file on the explorer section.

```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
```

```fluentui_icons: ^1.0.0```  should be added to the ```dependencies``` section of the ```pubspec.yaml``` file.  It will resemble the snippet above. Afterwards ```pub get``` should be selected and just like that, a library will have been imported into the streamlit app. In the ```bottom_dart``` file, import ```'package:fluentui_icons/fluentui_icons.dart'```. 

```dart
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
```

Getting back to the ```items``` section of the code, we will go through the home icon. This will be similar for all four icons except for the label.
```items``` is a list and within it is a ```BottomNavigationBarItem``` widget which takes in ```icon``` as an argument. Here, I selected the ```FluentSystemIcons.ic_fluent_home_regular``` which is basically an outline of a home icon. For the ```activeIcon``` section, the filled version of the home icon was selected. That way when selected, this icon got filled and when unselected, it was not. 

## **app_layout.dart**

To make our code more compact and reusable, it is necessary to create libraries. Thus, in the ```lib``` folder, we can create a ```utils``` folder and within it create a new file. This new file can be named ```app_layout.dart```. The following is a code snippet from the file:

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
```

The first thing we notice here is the foreign-looking import ```package:get/get.dart```. It is yet another imported library which is essential in the creation of designs that will look good on any device. The get library has widgets that control pixel size. Just as we did for the bottom bar icons, we shall import this package. On the ```pubspec.yaml``` dependencies, add ```get: ^4.6.5```. It will look something like this:

```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
  get: ^4.6.5 
```

Once that's done, we can get right back to the code. We create an ```AppLayout``` class. Within it, we shall have:

```dart
static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
```

* A static function ```getSize``` which takes in the location of the widget, that is, ```BuildContext``` and returns a ```MediaQuery``` class. MediaQuery allows a widget to rebuild automatically whenever the data changes, for instance, if the user rotates their device. In this case, the data in question is the size of the device's screen. 

```dart
static getScreenHeight() {
    return Get.height;
  }
```

* ```getScreenHeight``` which is a static function which, when called, returns the height of the device's screen.

```dart
static getScreenWidth() {
    return Get.width;
  }
```

* ```getScreenWidth``` which returns the width of the device's screen.

```dart
static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }
```

* The ```getHeight``` static function that takes in the number of pixels, divides the height of the device by the number of pixels and returns the value computed.

```dart
static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
```

* The ```getHeight``` static function that takes in the number of pixels, divides the width of the device by the number of pixels and returns the value computed.

## **app_styles.dart**

Next up is setting up our colors. This file is still within the ```utils``` folder. 

```dart
import 'package:flutter/material.dart';

Color primary = const Color(0xfff68ee5);

class Styles {
  static Color primaryColor = const Color(0xfff6f2f5);
  static Color textColor = const Color(0xfff2efef);
  static Color bgColor = const Color(0xff221f1f);
  static Color orangeColor = const Color(0xff7e1154);
  static Color khakiColor = const Color(0xff0c0c0c);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
}
```

Here, we set up our primary, background, text and headline colors. For consistency's sake, the shade of some of the colors to be used is also declared here. All these are stored in the ```Styles``` class. The ```TextStyle``` allows us to override the default fontsize, colour and weight of different text fields. That way, if at all we required our headline to be in italics, we can define it using TextStyle.

## **app_info_list**
Still within the ```utils``` folder, we will have a list of key and value pairs which we will use to make our app dynamic. This can be thought of as our makeshift database. In future, this will be updated by the owner of the gaming shop and will update as automatically.

```dart
List<Map<String, dynamic>> GameList = [
  {
    'image': 'img4.jpg',
    'game': 'God of War',
    'type': 'PS4',
    'price': 'Kes 50.00/hr'
  },
  {
    'image': 'img5.jpg',
    'game': 'Mortal Combat',
    'type': 'PS4',
    'price': 'Kes 50.00/hr'
  },
  {
    'image': 'img6.jpg',
    'game': 'FIFA',
    'type': 'PS5',
    'price': 'Kes 100.00/hr'
  },
];
```

```dart
List<Map<String, dynamic>> gameList = [
  {
    '001_Available': {'code': "001", 'name': "FIFA"},
    '002_Available': {'code': "002", 'name': "GTA"},
    'available_time': '1H 30M',
    'date': "1 MAY",
    'time': "08:00 AM",
    "players": "single"
  },
  {
    '001_Available': {'code': "003", 'name': "God of War"},
    '002_Available': {'code': "004", 'name': "GTA"},
    'available_time': '2H 30M',
    'date': "3 MAY",
    'time': "02:00 PM",
    "players": "multi"
  },
];
```

That being said, the two lists above will be the basis of most of the visuals we see in our application.

## **Widgets**
In any programming language, the reusability of code is essential. Since our app's layout has a number of features which may be repetitive, it is important to create code that is reusable in multiple screens. That being said, we create a ```widgets``` folder within the ```lib``` folder. Here, we will have:

1. **double_text_widget.dart**
Since at one point in time we will be required to format text such as 'Games' and 'View all', this particular dart file is very important. Well, at least in this application.

```dart
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
```
We will start by importing our libraries. Wow, we are already making use of the ```Styles``` library we created earlier!.

```dart
class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
```

Next, we create a ```stateless``` widget which we name ```AppDoubleTextWidget```. We then declare some string variables appropriately named ```bigText``` and ```smallText```. This widget, when in use, will require the user to define the big and small text respectively. 

```dart
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
      Text(bigText,
          style: Styles.headLineStyle2.copyWith(color: Color(0xfff4f0f0))),
      InkWell(
        onTap: () {},
        child: Text(
          smallText,
          style: Styles.textStyle,
        ),
      )
    ]);
  }
```

In this case, we will be returning a row and within it, we will utilize the ```mainAxisAlignment``` and constrain it as per the space between. That way, whichever text we put first and the second one, will be spaced according to the space between them. We then start defining our text and declaring their style. For our ```smallText```, things are a bit different. The ```InkWell``` function which is used here defines what the user will tap and its ```onTap``` parameter contains the definition of how the application ought to behave. Right now, it is not doing anything but should we want some form of response, we will be required to edit the ```onTap``` function. In the Inkwell's child, the small text as well as its style is defined.

2. **column_layout.dart**

![column_layout image](https://github.com/KaburaJ/Booking-App/blob/main/images/Image002.PNG)

This is similar to the ```double_text_widget.dart``` only that it aligns the first and second texts in a vertical manner. The text will appear in a vertical manner as if stacked on top of each other.

```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
```
First, we import our packages.

```dart
class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);
```
We create a ```stateless``` widget and define our first and second texts, our CrossAxisAlignment and isColor variables. The first and second text as well as the alignment are a requirement for the ```AppColumnLayout``` class to work. ```isColor``` is optional and only takes a boolean.

```dart
 @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: isColor == null
                ? Styles.headLineStyle4.copyWith(color: Colors.white)
                : Styles.headLineStyle4),
      ],
    );
  }
```

We will return a Column this time round. Within it, the ```crossAxisAlignment``` is initialized to ```alignment```. The children bit houses the first text and its style, a ```Gap``` function and the second text and its styling. The gap function can be used interchangeably with ```spacer()```. 
Importing ```gap()``` involves adding ```gap: ^2.0.0``` to the dependencies of ```pubspec.yaml```. Your pubspec.yaml will now look like this:

```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
  webviewx: ^0.2.1
  get: ^4.6.5 
  gap: ^2.0.0
```

3. **game_tabs.dart**

![Expected result image](https://github.com/KaburaJ/Booking-App/blob/main/images/Image001.PNG)

In order to get the desired result above, this dart file is necessary.
```dart
import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
```

The code snippet above contains the imported files for this particular file.

```dart
class AppGameTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppGameTabs({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
```

The String variables ```firstTab``` and ```secondTab``` are defined. They are required whenever ```AppGameTabs``` is called.

 ```dart
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(3.5),
          child: Row(
            children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(
                    AppLayout.getHeight(50),
                  )),
                  color: Colors.white),
              child: Center(
                child: Text(firstTab),
              ),
            ),
```

A ```FittedBox``` is returned here. Within it, a ```Container``` is created. ```Padding``` of 3.5 pixels is introduced within the container. The child is a ```Row``` with a child ```Container``` which occupies 44 percent of the screen in width. A ```Padding``` of 7 pixels vertically is placed. To produce the circular edge, ```BoxDecoration``` is done with a border radius in the horizontal direction. The left is defined with ```Radius.circular()``` This ensures that the left side of this container remains circular while the right retains the vertical edge.

```dart
Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(
                    AppLayout.getHeight(50),
                  )),
                  color: Colors.transparent),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ]),
```

The second ```Container``` within the ```Row``` which is wrappped in a ```Container``` which is the child of a ```FittedBox``` (quite a mouthful), is represented in the code snippet above. It has similar features as the first, the only difference being that in the ```BorderRadius.horizontal```, it is the right side of this container that is circular. In both cases, the text is centered. Also, the colour is white in the first container and transparent in the second. 

```dart
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFFF4F6FD),
          )),
```

This last bit of the code ensures that overall, the container retains a circular form.

4. **icon_text_widget.dart**

[Image]
This user-defined package provides a layout of the text that accompanies an icon.

```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
```

Importing our libraries.

```dart
class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);
```

A ```stateless``` widget is created. Within it, one IconData and one String type variable is created. Both are required.

```dart
@override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getWidth(12),
            horizontal: AppLayout.getHeight(12)),
        decoration: BoxDecoration(
            color: Color(0xff161616),
            borderRadius: BorderRadius.circular(
              AppLayout.getWidth(10),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xfffbf0f0),
                  blurRadius: 2,
                  spreadRadius: 1
            ]),
```

A ```Container``` is returned and after setting up the padding, its shape is defined as circular in the ```decoration``` field and its colour is set. 
Within the ```BoxDecoration```, an additional field, ```boxShadow``` is introduced. It defines the shadow cast by a box decoration. Its ```color``` is set to white, ```blurRadius``` to 2 and ```spreadRadius``` to 1.

```dart
child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xfffafbfd),
            ),
            Gap(AppLayout.getWidth(10)),
            Text(
              text,
              style: Styles.textStyle,
            )
          ],
        )
```

A ```Row``` that is within the ```Container``` is defined. Its ```children``` include ```Icon``` and ```Text``` which are separated by a gap of 10 pixels.

5. **layout_builder_widget.dart**

We shall import the ```package:flutter/material.dart```.

```dart
class AppLayoutBuiderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuiderWidget(
      {Key? key, this.isColor, required this.sections, this.width = 3})
      : super(key: key);
```

The code in this file allows the creation of a StatelessWidget in the Flutter framework that allows you to build a layout based on certain constraints. It takes in four parameters:

* key: a unique key that allows Flutter to identify this widget
* isColor: a boolean value that determines the color of the boxes
* sections: an integer that determines the number of sections to display
* width: a double that determines the width of each box (default is 3)
```Sections``` are a required field.

```dart
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 6).floor(),
              (index) => SizedBox(
                width: 1,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? Colors.white
                          : Colors.grey.shade300),
                ),
              ),
            ));
      },
    );
  }
  ```

The build method returns a LayoutBuilder widget that takes in a BuildContext and BoxConstraints and returns a Flex widget. The Flex widget is a layout widget that displays its children along a main axis and cross axis. It takes in several properties to control the layout, including:
* direction: determines the direction in which the children are placed (horizontal or vertical)
* mainAxisAlignment: determines how the children are aligned along the main axis
* mainAxisSize: determines the size of the main axis
The Flex widget also takes in a list of children, which are generated using the List.generate method. This method creates a new list of SizedBox widgets, with each widget having a width of 1 and a height of 1. The SizedBox widget is a box that takes up a specific amount of space.
Futhermore, Each SizedBox widget also has a DecoratedBox widget as a child. The DecoratedBox widget is a box that can be decorated with a background color, border, and more. The background color of the DecoratedBox is determined by the isColor parameter. If it is null, the color is set to white, otherwise it is set to grey.

6. **thick_container.dart** 

Import ```package:flutter/material.dart```

```dart
class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({Key? key, this.isColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2.5,
              color: isColor == null ? Colors.white : Color(0xFF8ACCF7))),
    );
  }
}
```
This is a StatelessWidget in the Flutter framework that creates a container with padding and a border. It takes in one parameter:

* key: a unique key that allows Flutter to identify this widget
* isColor: a boolean value that determines the color of the border
The build method returns a Container widget that has padding on all sides and a border with rounded corners. The border has a width of 2.5 and a color that is determined by the isColor parameter. If it is null, the color is set to white, otherwise it is set to a specific color (0xFF8ACCF7). 
The Container widget is a box that can contain other widgets and apply padding and a border around them.

## **home_screen.dart**

Here, we define what we want to be seen in our home page. Here's the procedure followed in this project:

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
Importing our libraries

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%201.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%202.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%203.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%204.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%205.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%206.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%207.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%208.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%209.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%210.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%211.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%212.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%213.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%214.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%215.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%216.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%217.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%218.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%219.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%220.PNG)
![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%221.PNG)









## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/joan-kabura)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/JoanKabura_)

