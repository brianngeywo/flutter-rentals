import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/main.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/pages/initial_pages/first_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Rentals',
      theme: ThemeData(
        primaryColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: 
      initScreen == 1 ? 
      const MyHomePage() 
      : FirstScreen(),
    );
  }
}