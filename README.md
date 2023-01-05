# Booking-App
This repository contains a booking app which targets gaming shops. This app can be accessed [here](https://kaburaj.github.io/Booking-App)
# Table of contents
1. [Overview](#Overview)
2. [Development](#Development)
    1. [The_Nitty_Gritties](https://github.com/KaburaJ/Booking-App/blob/main/README.md#the-nitty-gritties)
        1. [Definitions](#Definitions)
3. [Let's_Dive_into_it!](https://github.com/KaburaJ/Booking-App/blob/main/README.md#lets-dive-into-it)
    1. [main.dart](https://github.com/KaburaJ/Booking-App#maindart)
    2. [bottom_bar.dart](https://github.com/KaburaJ/Booking-App#bottom_bardart)
    3. [Utils](https://github.com/KaburaJ/Booking-App#utils)
        1. [app_layout.dart](https://github.com/KaburaJ/Booking-App#app_layoutdart)
        2. [app_styles.dart](https://github.com/KaburaJ/Booking-App#app_stylesdart)
        3. [app_info_list.dart](https://github.com/KaburaJ/Booking-App#app_info_list)
    5. [Widgets](https://github.com/KaburaJ/Booking-App#widgets)
        1. [double_text_widget.dart](https://github.com/KaburaJ/Booking-App#double_text_widgetdart)
        2. [column_layout.dart](https://github.com/KaburaJ/Booking-App#column_layoutdart)
        3. [game_tabs.dart](https://github.com/KaburaJ/Booking-App#game_tabsdart)
        4. [icon_text_widget.dart](https://github.com/KaburaJ/Booking-App#icon_text_widgetdart)
        5. [layout_builder_widget.dart](https://github.com/KaburaJ/Booking-App#layout_builder_widgetdart)
        6. [thick_cotainer.dart](https://github.com/KaburaJ/Booking-App#thick_containerdart)
    6. [Home Screen](https://github.com/KaburaJ/Booking-App#home-screen)
    7. [Search_Screen](https://github.com/KaburaJ/Booking-App#search-screen)
    8. [Games ticket view](https://github.com/KaburaJ/Booking-App/blob/main/README.md#games-ticket-view)
    9. [Profile Screen](https://github.com/KaburaJ/Booking-App/blob/main/README.md#profile-screen)
5. [We made it!](https://github.com/KaburaJ/Booking-App/blob/main/README.md#we-made-it)
5. [Acknowledgements](#Acknowledgements)
5. [links](#links)

# Overview
This app, though currently more of a UI representation of the end goal, is supposed to be updated by the gaming shop owner. These changes are to be showcased in real time hence the application's dynamic nature. The clients, on the other hand, can now book the available games in advance instead of going to the shop and waiting in line, thus wasting time. To put a spin on it, I thought of categorizing the games in terms of availability and the number of players it requires. For example, the client might opt for a multi-player game at a certain time. This game will remain in the available games tab up until the maximum number of players for that game (usually 2) is reached. 
</br>


# Development
In the creation of this application, [Flutter](https://www.geeksforgeeks.org/what-is-flutter/) framework, which supports cross-platform applications, was used. In my case, I used [FlutLab](https://flutlab.io/) in the execution of code initially. Afterwards, I incorporated VS Code in the final building and eventual deployment to Github pages. No special reason though, the choice of IDE was based on preference.
</br>


## The Nitty Gritties
Setting up a [Flutter environment](https://flutter.io/get-started/editor/) is the first course of action. [VS Code](https://code.visualstudio.com/) is preferred. Nonetheless, on opening any Flutter IDE, one is welcomed by a screen with code already on it. In my case, it was the 'Hello World' project. For a smile's sake, I would advice one to run it, feel proud of themselves for a moment, press and hold Ctrl+A and delete. 
</br>


### Definitions
Before diving into the application's code, certain key words have to be understood. They include:
</br>

1. **Widget** 
This feature is graphical and provides information through which a user can interact with an application. Widgets are of two types: **Stateless** and **stateful**.

- **Stateless** widgets refer to widgets which are immutable. Simply put, stateless widgets do not change even when there are obvious changes in the app such as variations in the input parameters. A good example is a text widget.

- A **stateful** widget changes in sync with the input data or parameters and are the complete opposite of stateless widgets. They are mutable.
Thus, in the selection of a stateless or stateful widget- which you will see plenty of times in this project, is entirely based on whether or not the UI at that particular instance is expected to change or not. 
</br>
`Stateless`, UI will not change. `Stateful`, UI might change. Well, you get the idea.
</br>

2. **Container**
From the word itself, a container is some sort of storage system. In Flutter, a container stores widgets which perform various functions such as displaying text, icons and images. It is useful for when these widgets are many and require to be arranged and positioned ina certain way as per the UI design. A container is a widget in its own capacity. It is referred to as a parent widget. It might be obvious, or not, that this parent widget requires a child widget. This is true for a `Container`. 
</br>
Consequently, there are terms that are used within containers. They include:
- **Padding**
This widget creates empty space around a widget or a group of widgets. 
</br>

- **Margin**
Easily confused with padding, this widget creates empty space around the container itself. In this way, it outlines the application's margin.
</br>

- **Row and Column**
Rows and columns are usually accompanied by children in the Flutter syntax. As such, a row displays its children in a horizontal manner whereas a column displays these children in a vertical manner. 
</br>
*In the interpration of UI design to code, identifying whether you intend to work with a column or row in a particular instance is paramount in the creation of an application.*
</br>

- **CrossAxisAlignment and MainAxisAlignment**
When it comes to rows, the main axis is horizontal while the cross axis is perpendicular. The opposite is true for columns. Consequently, the terms CrossAxisAlignment and MainAxisAlignment vary in definition depending on whether one is referring to the row or column. However, both properties allow for positioning of widgets. 
</br>

- **Spacer()**
Of importance is the `spacer()` widget which allows for spacing in between widgets. In this project, the widget is replaced by Gap() which carries out a similar funtion.
</br>

- **Height and Width**
</br>

3. **Scaffold**
A scaffold provides the UI layout of an application's screen such as appbar and bottom navigation bar. Where this layout is to be used by default, the scaffold can wrap a container. 
Although a scaffold and container may seem to overlap in functioning, a container is more flexible moreso when one is aiming at creating their own layout away from the defaults. 
</br>

4. **Flex**
We can refer to flex as a combination of rows and columns. It facilitates the positioning of widgets either in the vertical or horizontal axes. Unlike row and column whose direction is fixed, flex is flexible.
</br>

6. **ListView**
ListView creates children in a list that can be `scrolled though` either vertically or horizontally. 
</br>

8. **Stack**
When one wants widgets to overlap, a stack widget is used.
</br>

9. **FittedBox**
When called, it creates a widget that scales and positions its child within itself
</br>

-All these keywords and many others are used at one point or another in this particular project. Now that we have defined a few of the buzzwords, we can now dive into the code.

*PS: The UI/ layout design comes first before any coding can be done. Thus, it is a good idea to have a vision sketched out to make coding easier and more enjoyable*
</br>
</br>


# Let's Dive into it!
## **main.dart**
</br>
The `main.dart` file is a prerequisite for all Flutter applications and is where the program starts. 

```dart
import 'package:flutter/material.dart';
import 'package:kaburacreates/screens/bottom_bar.dart';
import 'package:kaburacreates/utils/app_styles.dart';

void main() => runApp(const MyApp());
```



It takes one `main()` function that excecutes any code within it. Simply put, it allows our widgets to be seen by the user. The runApp() method loads the app layout on the [emulator's](https://www.geeksforgeeks.org/how-to-run-a-flutter-app-on-android-emulator/) screen. 
</br>
Above it is a list of imports. Some like `package:flutter/material.dart` are standard built-in libraries while others like `package:kaburacreates/screens/bottom_bar.dart`are user-defined meaning that in the creation of this project, some libraries were created, the intent being to reuse code. 
</br>


```dart
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  ```

It takes a widget, `Stateless` in this case, as a parameter in which we ought to pass a root widget. In this case, `MyApp` is the root widget name.
</br>


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

The code above is our project's root. That means that it will be the parent widget for all others that follow. It will house our `Container ` , `Scaffold` , `Stack` and `ListView` among others. 
</br>
`@override` allows the overriding of the methods of the parent class. It is overriding the ```build()``` method which takes in the ```BuildContext``` object and returns a widget; ```MaterialApp``` which houses:
 - ```debugShowCheckedModeBanner: false``` 
 </br>
 which that hides the debug tag that appears by default on any emulator in debug mode
 - the `title`: "Flutter Hello World"
 - a selected `theme` which, in this case, is the primary color of the app. `primary` is a user defined variable. 
 - The `home` widget 
 </br>
 which allows for one to define the place where the application begins when rerun. In this case, the ```BottomBar``` will be the first to be showcased.
</br>

Now that we've gone through the ```main.dart``` file, let's begin by setting up the bottom bar for easier reference.
</br>


## **bottom_bar.dart**

![Bottom Bar](https://github.com/KaburaJ/Booking-App/blob/main/images/Image003.PNG)
</br>

The image above is a snippet of the bottom bar. It consists of the `home`, `search`, `games` and `profile` fields. This section attaempts to recreate what is represented by the image above.
</br>
In the ```file explorer``` section of your IDE's interface, you will find the ```lib``` folder. This is where a folder named ```screens``` is created. Within it, I created a ```bottom_bar.dart``` file.


![File Explorer](https://github.com/KaburaJ/Booking-App/blob/main/images/Image004.PNG)
</br>


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

The first thing to do was to create a ```stateful widget``` which can be autogenerated by any Flutter IDE. It is as easy as right clicking or hitting some special keys. Once created, I renamed mine to ```BottomBar```. Which was referenced in the ```main.dart``` file. 
</br>
*I think this is a good place to mention that importing the ```'package:flutter/material.dart'``` standard library should be standard practice for each file created to get rid of any errors.*
</br>
Our bottom bar contains the ```home```, ```search```, ```games``` and ```profile``` sections. They are the ones which are referenced as ```HomeScreen()```, ```SearchScreen()```, ```GamesTicketView()``` and ```ProfileScreen()```; each with a separate dart file to be addressed later on. 
</br>
Additionally, an integer type variable, ```_selectedIndex``` has been initialized to zer0. Why, you may ask? Let's dive even deeper.
</br>


```dart
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
```

A function, ```_onItemTapped```, is then created. It takes an integer as an argument which is to be stored in the ```index``` variable. The ```setState``` function notifies the framework that the initial state of the object within it has changed. In this case, the object in question is the ```_selectedIndex``` which is re-initialized to the index input. 
</br>


```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
```
We then return ```Scaffold```; again, for a default structure. Within it, there are several parameters.
</br>


```dart
body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
```

The first is the definition of the ```body```.  The ```Center``` widget is passed. It centers its child which in this case is the index of the list of icons on the bottom bar. Thus, in retrospect, each Icon in the bottom bar is assigned an index and the code snippet above centers each of these icons to provide an apealing look.
</br>


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

```bottomNavigationBar``` is up next. It is still within the scaffold. It allows for definition of parameters of the items that go into the bottom bar. ```BottomNavigationBar``` takes a lot of parameters. The ones represented in the code snippet above are a handful of them. They include:
* ```currentIndex``` which stores the index of the current selected item on the bottom bar. It is assigned ```_selectedIndex``` which was initialized earlier.
</br>
* ```onTap``` which checks if any of the items on the bottom bar are selected.
</br>
* ```elevation``` which controls the size of the shadow behind the bottom bar. It is initialized to 10 pixels. However, 10 pixels may vary from phone to phone depending on size and other factors such as height. *That is why the ```app_layout``` library was created. We shall take a look at it pretty soon!*
</br>
* ```showSelectedLabels``` which is set to ```false``` meaning that, for instance, on selecting the home icon, the label ```home``` will not be shown.
</br>
* ```showUnselectedLabels``` which ensures that the labels of the icons, when unselected, remain unseen.
</br>
* ```selectedItemColor``` which is set to a blueGrey colour. Consequently, it is used to set the icon colour when tapped.
</br>
* ```type``` which is set to ```BottomNavigationBarType.fixed``` which ensures that the icons remain in their fixed positions and do not move haphazardly when tapped.
</br>
* ```unselectedItemColor``` which defines the colour of the icons when they are not selected.
</br>
* ```items``` which defines the appearance of the icons on the bottom bar. For this, instead of using the default icons in the material library, another library was imported. It is called the ```FluentSystemIcons``` library. 
</br>
To import this library, we head on to the ```pubspec.yaml``` file on the explorer section.
</br>


```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
```

```fluentui_icons: ^1.0.0```  should be added to the ```dependencies``` section of the ```pubspec.yaml``` file.  It will resemble the snippet above. Afterwards ```pub get``` should be selected and just like that, a library will have been imported into the streamlit app. 
</br>
*In the ```bottom_dart``` file, import ```'package:fluentui_icons/fluentui_icons.dart'``` to be able to use the new icons in your application*
</br>


```dart
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
```

Getting back to the ```items``` section of the code, we will go through the home icon. This will be similar for all four icons except for the label.
```items``` is a list and within it is a ```BottomNavigationBarItem``` widget which takes in ```icon``` as an argument. Here, I selected the ```FluentSystemIcons.ic_fluent_home_regular``` which is basically an outline of a home icon. For the ```activeIcon``` section, the filled version of the home icon was selected. That way when selected, this icon got filled and when unselected, it was not. 
</br>
</br>


## Utils

To make our code more compact and reusable, it is necessary to create custom libraries. Thus, in the ```lib``` folder, we can create a ```utils``` folder and within it create a new file. This new file can be named ```app_layout.dart```. 
### **app_layout.dart**
</br>


The following is a code snippet from the file:

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
```

The first thing we notice here is the foreign-looking import ```package:get/get.dart```. It is yet another imported library which is essential in the creation of designs that will look good on any device. The get library has widgets that control pixel size. Just as we did for the bottom bar icons, we shall import this package.
</br>
On the ```pubspec.yaml``` dependencies, add ```get: ^4.6.5```. It the updated version will look something like this:

```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
  get: ^4.6.5 
```
</br>
*Remember to import `package:get/get.dart` to be able to use get()*

Once that's done, we can get right back to the code. We create an ```AppLayout``` class. Within it, we shall have:

```dart
static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
```

* A static function ```getSize``` which takes in the location of the widget, that is, ```BuildContext``` and returns a ```MediaQuery``` class. 
*MediaQuery allows a widget to rebuild automatically whenever the data changes, for instance, if the user rotates their device.* In this case, the data in question is the size of the device's screen. 
</br>


```dart
static getScreenHeight() {
    return Get.height;
  }
```

* ```getScreenHeight``` which is a static function which, when called, returns the height of the device's screen.
</br>


```dart
static getScreenWidth() {
    return Get.width;
  }
```

* ```getScreenWidth``` which returns the width of the device's screen.
</br>


```dart
static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }
```

* The ```getHeight``` static function that takes in the number of pixels, divides the height of the device's screen by the number of pixels and returns the value computed.
</br>


```dart
static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
```

* The ```getHeight``` static function that takes in the number of pixels, divides the width of the device's screen by the number of pixels and returns the value computed.
</br>


### **app_styles.dart**

Next up is setting up our custom colors. This file is still within the ```utils``` folder. 
</br>


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

Here, we set up our `primary`, `background`, `text` and `headline` colors. For consistency's sake, the shade of some of the colors to be used is also declared here. All these are stored in the ```Styles``` class. ```TextStyle``` allows us to override the default `fontsize`, `colour` and `weight` of different text fields. 
</br>


### **app_info_list**
Still within the ```utils``` folder, we will have a list of key and value pairs which we will use to make our app dynamic. This can be thought of as our makeshift database. In future, this will be updated by the owner of the gaming shop and will update automatically.
</br>


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
</br>
</br>


## **Widgets**
In any programming language, the reusability of code is essential. Since our app's layout has a number of features which may be repetitive, it is important to create code that is reusable in multiple screens. 
</br>
That being said, we create a ```widgets``` folder within the ```lib``` folder. Here, we will have:
</br>


### **double_text_widget.dart**
Since at one point in time we will be required to format text such as 'Games' and 'View all', this particular dart file is very important. Well, at least in this application.

```dart
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
```
We will start by importing our libraries. *Wow, we are already making use of the ```Styles``` library we created earlier!.*

```dart
class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
```

Next, we create a ```stateless``` widget which we name ```AppDoubleTextWidget```. We then declare some string variables appropriately named ```bigText``` and ```smallText```. When in use, this widget will require the user to define the big and small text respectively. 
</br>


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

In this case, we will be returning a `row` and within it, we will utilize the ```mainAxisAlignment``` and constrain it as per the `space between`. That way, whichever text we put first and the second one, will be spaced according to the space between them. We then start defining our text and declaring their style. 
</br>
For our ```smallText```, things are a bit different. The ```InkWell``` function which is used here defines what the user will tap and its ```onTap``` parameter contains the definition of how the application ought to behave. Right now, it is not doing anything but should we want some form of response, we would be required to edit the ```onTap``` function. In the Inkwell's child, the small text as well as its style is defined.
</br>


### **column_layout.dart**

![column_layout image](https://github.com/KaburaJ/Booking-App/blob/main/images/Image002.PNG)
</br>

This is similar to the ```double_text_widget.dart``` only that it aligns the first and second texts in a vertical manner. The text will appear in a vertically; as if stacked on top of each other.
</br>


```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
```
First, we import our packages.
</br>


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
We create a ```stateless``` widget and define our `first` and `second` texts, our `alignment` and `isColor` variables. The first and second text as well as the alignment are a requirement for the ```AppColumnLayout``` class to work. ```isColor``` is optional and only takes a boolean, ie., it can only be initialized to either `true` or `false`.
</br>


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

We will return a `Column` this time round. Within it, the ```crossAxisAlignment``` is initialized to ```alignment```. The children bit houses the `first` text and its style, a ```Gap``` function and the `second` text and its styling. The `gap` function can be used interchangeably with ```spacer()```. 
</br>
*Importing gap() library*
Importing ```gap()``` involves adding ```gap: ^2.0.0``` to the dependencies of ```pubspec.yaml```. Your pubspec.yaml will now look like this:


```dart
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.2
  fluentui_icons: ^1.0.0
  get: ^4.6.5 
  gap: ^2.0.0
```
</br>

### **game_tabs.dart**

![Expected result image](https://github.com/KaburaJ/Booking-App/blob/main/images/Image001.PNG)


In order to get the reproduceable code of the desired result above, this dart file is necessary.
</br>

```dart
import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
```

The code snippet above contains the imported files for this particular file.
</br>


```dart
class AppGameTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppGameTabs({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
```

Thereafter, the `String` variables ```firstTab``` and ```secondTab``` are defined. They are required whenever ```AppGameTabs``` is called.
</br>


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

A ```FittedBox``` is then returned. Within it, a ```Container``` is created. ```Padding``` of 3.5 pixels is introduced within the container. The child is a ```Row``` with a child ```Container``` which occupies 44 percent of the screen in width. A ```Padding``` of 7 pixels vertically is placed. 
</br>
To produce the circular edge, ```BoxDecoration``` is done with a border radius in the horizontal direction. The left is defined with ```Radius.circular()``` This ensures that the left side of this container remains circular while the right retains a vertical edge.
</br>


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

The second ```Container``` within the ```Row``` which is wrappped in a ```Container``` which is the child of a ```FittedBox``` *quite a mouthful*, is represented in the code snippet above. It has similar features as the first, the only difference being that in the ```BorderRadius.horizontal```, it is the right side of this container that is circular. In both cases, the text is centered. Also, the colour is white in the first container and transparent in the second.
</br>


```dart
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFFF4F6FD),
          )),
```

This last bit of the code ensures that overall, the initial container retains a circular form.
</br>


### **icon_text_widget.dart**

This user-defined package provides a layout of the text that accompanies any icon in this project.
</br>


```dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
```

Importing our libraries first.
</br>


```dart
class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);
```

Creating a ```stateless``` widget. 
</br>
Within it, one `IconData` and one `String` type variable is created. Both are required when `AppIconText` is called.
</br>


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
Returning a `Container`
</br>
A ```Container``` is returned and after setting up the padding, its shape is defined as circular in the ```decoration``` field and its colour set. 
Within the ```BoxDecoration```, an additional field, ```boxShadow``` is introduced. It defines the shadow cast by a box decoration. Its ```color``` is set to white, ```blurRadius``` to 2 and ```spreadRadius``` to 1.
</br>


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

Defining ```Row``` that is within the ```Container```. 
</br>
Its ```children``` include ```Icon``` and ```Text``` which are separated by a gap of 10 pixels.
</br>


### **layout_builder_widget.dart**

We shall import the ```package:flutter/material.dart```.
</br>


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

* `key`: a unique key that allows Flutter to identify this widget
* `isColor`: a boolean value that determines the color of the boxes
* `sections`: an integer that determines the number of sections to display
* `width`: a double that determines the width of each box (default is 3)
```Sections``` are a required field.
</br>


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

The `build` method returns a `LayoutBuilder` widget that takes in `BuildContext` and `BoxConstraints` and returns a Flex widget. The Flex widget takes in several properties to control the layout, including:
* `direction`: determines the direction in which the children are placed (horizontal or vertical)
* `mainAxisAlignment`: determines how the children are aligned along the main axis
* `mainAxisSize`: determines the size of the main axis
The `Flex` widget also takes in a list of children, which are generated using the `List.generate` method. This method creates a new list of `SizedBox` widgets, with each widget having a `width` of 1 and a `height` of 1. 
</br>
The `SizedBox` widget is a box that takes up a specific amount of space.
Futhermore, Each SizedBox widget also has a `DecoratedBox` widget as a `child`. The DecoratedBox widget is a box that can be decorated with a `background color`, `border`, and more. The background colour of the DecoratedBox is determined by the `isColor` parameter. If it is null, the color is set to white; otherwise, it is set to grey.
</br>


### **thick_container.dart** 

Import ```package:flutter/material.dart```
</br>


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
```ThickContainer``` is a StatelessWidget in the Flutter framework that creates a `Container` with `padding` and a `border`. Its parameters are:

* `key`: a unique key that allows Flutter to identify this widget
* `isColor`: a boolean value that determines the color of the border
</br>
The build method returns a `Container` widget that has `padding` on all sides and a border with rounded corners. The border has a `width` of 2.5 and a `color` that is determined by the isColor parameter. If it is null, the color is set to white, otherwise it is set to a specific color (0xFF8ACCF7). 

</br>

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

That's our homescreen! Let us head on over to the `search` screen.

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
</br>
</br>
</br>
</br>
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
This code is defining a "Scaffold" widget with a white background color, and a single child, which is a "ListView" widget. The `ListView` has padding and a single child, which is a row widget with two children. The first child is a container widget with a height and width of 86 pixels, and a decoration that includes a rounded corner border and an image. The second child is a gap widget with a fixed height of 10 pixels.
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
The code above defines a gap widget with a fixed height of 8 pixels as a child of the `ListView` widget, followed by a divider widget with a grey color, and another gap widget with a fixed height of 8 pixels.
</br>
The code also defines a stack widget with a single child, which is a container widget. The stack widget has a single grandchild, which is a positioned widget.
</br>
The container widget has a fixed height of 90 pixels and a width of `double.infinity`, so it will take up all the available horizontal space. It also has a decoration with a dark purple background color and rounded corners.
</br>
The positioned widget is positioned 45 pixels to the right and 40 pixels from the top of the container widget. It has padding and a decoration with a transparent color, a circular shape, and a border with a width of 18 pixels and a dark purple color.
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
* A gap with a height of 25 logical pixels.
* A text element with the text "Accumulated Games" and a particular style defined by Styles.headLineStyle2.
* Another gap with a height of 20 logical pixels.
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

This code also includes a divider widget as a child of the column, which will display a horizontal line with a grey color.
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
The `AppColumnLayout` widget appears to have four named parameters: `firstText`, `secondText`, `alignment`, and `isColor`. This widget displays two pieces of text and allows some customization of the text alignment and coloring. The "firstText" and `secondText` parameters probably specify the text to be displayed, while the `alignment` parameter controls the alignment of the text within the widget. 
</br>
This code also includes another divider widget as a child of the column, and a container widget with a single child, which is a column widget containing a gap and a divider widget.


## Outcome

![fig 1](https://github.com/KaburaJ/Booking-App/blob/main/images/Output%2021.PNG)
</br>
</br>
</br>

# We made it!
Now that we've created the home, search, game tickets and profile screens, we have created pretty much the whole project. There is room for improvement in terms of making it useful in the real world but so far, so good. To share it with peers publicly, one has to deploy their application. There are several platforms, GitHub Pages being one of them. This [tutorial](https://maheshmnj.medium.com/deploying-your-flutter-webapp-to-github-pages-111ff9e5cbc9) details the procedure clearly.

# Acknowledgements
 - [Awesome Flutter Tutorial](https://www.youtube.com/watch?v=71AsYo2q_0Y)
 - [Awesome Guide to deploy Flutter app to GitHub Pages](https://github.com/matiassingers/awesome-readme)
 - [Awesome Guide to deploy Flutter app to GitHub Pages](https://maheshmnj.medium.com/deploying-your-flutter-webapp-to-github-pages-111ff9e5cbc9)
</br>
</br>
## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/joan-kabura)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/JoanKabura_)

