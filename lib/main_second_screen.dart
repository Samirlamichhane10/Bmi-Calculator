import 'package:flutter/material.dart';
import 'main.dart';
import 'second_screen.dart';


class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp(home:SecondScreen(recommend: "",finalBmi: "",level: "",));
  }

}
