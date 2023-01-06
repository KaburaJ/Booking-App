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
