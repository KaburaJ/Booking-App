import 'package:flutter/material.dart';
import 'package:kaburacreates/screens/bottom_bar.dart';
import 'package:kaburacreates/utils/app_styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  }
}
