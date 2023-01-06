
## The Nitty Gritties

Setting up a [Flutter environment](https://flutter.io/get-started/editor/) is the first course of action. [VS Code](https://code.visualstudio.com/) is preferred. Nonetheless, on opening any Flutter IDE, one is welcomed by a screen with code already on it. In my case, it was the 'Hello World' project. For a smile's sake, I would advice one to run it, feel proud of themselves for a moment, press and hold Ctrl+A and delete. 
</br>
We'll start by defining our terms so let us head on over to the definitions.


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
