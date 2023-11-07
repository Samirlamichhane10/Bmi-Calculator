import 'package:bmi_calculator/second_screen.dart';
import 'package:flutter/material.dart';
import 'hom_page.dart';

void main() {
  runApp(const  MyApp( home: HomePage(),));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.home});
  final Widget? home;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: home,
      theme: ThemeData(
        canvasColor:Theme.of(context).canvasColor, //color of boxes
        appBarTheme:const  AppBarTheme(
          color: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),



    ) ;
  }
}
