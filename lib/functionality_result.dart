//import 'main_second_screen.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'second_screen.dart';
class Functionality
{
  Functionality({required this.height,required this.weight});
  int height ;
  int weight;
  double _bmi=0;
  String bmi ()
  {
    _bmi = weight / pow((height/100),2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult()
  {
    if (_bmi>=18.25 && _bmi<=25)
    {
      return "NORMAL";
    }
    else if(_bmi<=18.25){
      return "UNDERWEIGHT";
    }
    else {
      return "OVERWEIGHT";
    }


  }

  String getNote(){

    if (_bmi>=18.25 && _bmi<=25)
    {
      return "You have Normal Body.Keep Going.";
    }
    else if(_bmi<=18.25){
      return "You are quite thin.Have some Balanced Diet.";
    }
    else {
      return "You have high Body Mass.Please control the diet.";
    }
  }


}