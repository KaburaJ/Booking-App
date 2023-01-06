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
