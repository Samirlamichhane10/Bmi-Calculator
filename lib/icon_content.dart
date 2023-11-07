import 'package:flutter/material.dart';
import 'input_boxes.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key,required this.iconType,required this.iconText});
  final IconData iconType;
  final String iconText;



  @override
  Widget build(BuildContext context) {
    return Box(
        flexnum: 1,
        heightf: 1,
        widthf: 1,
        genderIcon: Icon(
          iconType, //MALE
          size: 85,
          color: Colors.white,

        ),
        textIcon: iconText,



    );
  }
}
