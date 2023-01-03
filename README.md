# Booking-App

This repository contains a booking app which targets gaming shops. This app can be accessed [here](https://kaburaj.github.io/Booking-App)

## Overview
This app, though currently more of a UI representation of the end goal, is supposed to be updated by the gaming shop owner. These changes are to be showcased in real time hence the app is dynamic nature. The clients, on the other hand, can now book the available games in advance instead of going to the shop and waiting in line, thus wasting time. To put a spin on it, I thought of categorizing the games in terms of availability and the number of players it requires. For example, the client might opt for a multi-player game at a certain time. This game will remain in the available games tab up until the maximum number of players for that game (usually 2) is reached. 

## Development
In the creation of this application, [Flutter](https://www.geeksforgeeks.org/what-is-flutter/), which supports cross-platform applications, was used. In my case, I used [FlutLab](https://flutlab.io/) in the execution of code initially. Afterwards, I incorporated VS Code in the final building and eventual deployment to Github pages. No special reason though, the choice of IDE was done based on preference.

## The Nitty Gritties
Setting up a [Flutter environment](https://flutter.io/get-started/editor/) On opening any Flutter IDE, one is welcomed by a screen with code already on it. In my case, it was the 'Hello World' project. For a smile's sake, I would advice one to run it, feel proud, press and hold Ctrl+A and delete. Mostly, the lib/main.dart is what will be edited. We'll begin in the main.dart file. It looks something like this...
[image]
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
-All these keywords are used at one point or another in this particular project. Now that we have defined everything, we can now dive into the code itself.

PS: The UI/ layout design comes first before any coding can be done. 

### Let's Dive into it!
[App Image]
Looking at the homescreen UI [here](https://kaburaj.github.io/Booking-App), there's:
* some form of text. Furthermore, the text is of varying fontsize.
* an image at the top right corner
* a search space that has a search icon and the word 'search' on it
* The text 'Available Games' and 'View all' on the same row but at the beginning and end respectively
* A scrollable section (we'll eloy some sort of ListView widget). Worth noting is that this section is scrollable horizontally.
* The text 'Games' and 'View all' on the same row but at the beginning and end respectively
* Another scrollable section that has some images and text.
* Lastly, there is a bottom bar that contains four icons namely: the 'home', 'search', 'games' and 'profile' icons which are clickable.
 
**main.dart**

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

**bottom_bar.dart**

In the ```file explorer``` section of your IDE's interface, you will find the ```lib``` folder. This is where I created a folder named ```screens```. Within it, I created a ```bottom_bar.dart``` file.

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








## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/joan-kabura)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/JoanKabura_)

