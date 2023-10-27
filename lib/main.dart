import 'package:flutter/material.dart';
import 'package:quiz1/moody_screen.dart';
import 'package:quiz1/news.dart';
import 'package:quiz1/workout_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'workout_screen',
      routes:{
        'moody_screen':(context)=>moody_screen(),
        'news':(context)=>news(),
        'workout_screen':(context)=>workout_screen(),
      },
    );
  }
}