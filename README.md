# Booking-App

This repository contains a booking app which targets gaming shops. This app can be accessed [here](https://kaburaj.github.io/Booking-App)

## Overview
This app, though currently more of a UI representation of the end goal, is supposed to be updated by the gaming shop owner. These changes are to be showcased in real time hence the app is dynamic nature. The clients, on the other hand, can now book the available games in advance instead of going to the shop and waiting in line, thus wasting time. To put a spin on it, I thought of categorizing the games in terms of availability and the number of players it requires. For example, the client might opt for a multi-player game at a certain time. This game will remain in the available games tab up until the maximum number of players for that game (usually 2) is reached. 

## Development
In the creation of this application, [Flutter](https://www.geeksforgeeks.org/what-is-flutter/), which supports cross-platform applications, was used. In my case, I used [FlutLab](https://flutlab.io/) in the execution of code initially. Afterwards, I incorporated VS Code in the final building and eventual deployment to Github pages. No special reason though, the choice of IDE was done based on preference.

### The Nitty Gritties
Setting up a [Flutter environment](https://flutter.io/get-started/editor/) On opening any Flutter IDE, one is welcomed by a screen with code already on it. In my case, it was the 'Hello World' project. For a smile's sake, I would advice one to run it, feel proud, press and hold Ctrl+A and delete. Mostly, the lib/main.dart is what will be edited. We'll begin in the main.dart file. It looks something like this...
[image]
Before diving into the code, certain key words have to be understood. They include:
1. **Widget** 
This feature is graphical and provides information through which a user can interact with an application. Widgets are of two types: **Stateless** and **stateful**.
i. A **stateless** widget refers to widgets which are immutable. Simply put, stateless widgets do not change even when there are obvious changes in the app such as variations in the input parameters. A good example is a text widget.
ii. A **stateful** widget changes in sync with the input data or parameters and are the complete opposite of stateless widgets. They are mutable.
Thus, in the selection of a stateless or stateful widget- which you will see plenty of times in this project, is entirely based on whether or not the UI at that particular instance is expected to change or not. Stateless, UI will not change. Stateful, UI might change. Well, you get the idea.
2. **Container**
From the word itself, a container is some sort of storage system. In Flutter, a container stores widgets which perform various functions such as displaying text, icons and images. It is useful for when these widgets are many and require to be arranged and positioned ina certain way as per the UI design. A container is a widget in its own capacity. It is referred to as a parent widget. It might be obvious, or not, that this parent widget requires a child widget. There are terms that are used within containers. They include:
i. **Padding**
This widget creates empty space around a widget or a group of widgets. 
ii. **Margin**
This widget creates empty space around the container itself. In this way, it outlines the application's margin.
iii. **Row and Column**
Rows and columns are usually accompanied by children in the Flutter syntax. As such, a row displays its children in a horizontal manner whereas a column displays these children in a vertical manner.
iv. **CrossAxisAlignment and MainAxisAlignment**
When it comes to rows, the main axis is horizontal while the cross axis is perpendicular. The opposite is true for columns. Consequently, the terms CrossAxisAlignment and MainAxisAlignment vary in definition depending on whether one is referring to the row or column. However, both properties allow for positioning of widgets. 
vi. **Spacer()**
Allows for spacing in between widgets. In this project, the widget is replaced by Gap() which carries out a similar funtion.
v. **Height and Width**
3. **Scaffold**
A scaffold provides the UI layout of an application's screen such as appbar and bottom navigation bar. Where this layout is to be used by default, the scaffold can wrap a container. 
Although a scaffold and container may seem to overlap in funtioning, a container is more flexible moreso when one is aiming at creating their own layout away from the defaults. 
4. **Flex**
5. **ListView**
6. **Stack**





## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/joan-kabura)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/JoanKabura_)

