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
