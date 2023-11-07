import 'package:bmi_calculator/main_second_screen.dart';
import 'package:bmi_calculator/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_boxes.dart';
import 'bottom_calculate_button.dart';
import 'icon_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color activeCardColor = Color(0xFF272A4E);
  Color inactiveCardColor = Color(0xFF101427);
  Color value = Color(0xFF101427);
  int height = 100;
  int weight = 60;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Row(
                // first row for icons
                children: [
                  IconContent(
                    iconText: "MALE",
                    iconType: FontAwesomeIcons.mars,
                  ),

                  IconContent(
                    iconText: "FEMALE",
                    iconType: FontAwesomeIcons.venus,
                  ),

                  // Expanded(child: child),
                ],
              ),
            ),
            /*    Expanded(flex: 5,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child:Column(
                  children: [
                    Text("HEIGHT")
                  ],
                ),
              ),
            )*/
            Box(
              flexnum: 5,
              heightf: 1,
              widthf: 1,
              textIcon: 'HEIGHT',
              genderIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text("Cm"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 20,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 35),
                      ),
                      child: Slider(
                          min: 50.0,
                          max: 200.0,
                          activeColor: Colors.white,
                          thumbColor: Color(0xFFFE0167),
                          inactiveColor: Colors.white60,
                          value: height.toDouble(),
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight.round();
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ), //2nd row for height
            //    Expanded(child: child),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Box(
                      flexnum: 1,
                      heightf: 1,
                      widthf: 1,
                      genderIcon: IconButton(
                        content: "WEIGHT",
                        number: weight,
                        onPressedPlus: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onPressedMinus: () {
                          setState(() {
                            weight--;
                          });
                        },
                      )),
                  Box(
                      flexnum: 1,
                      heightf: 1,
                      widthf: 1,
                      genderIcon: IconButton(
                          content: "AGE",
                          number: age,
                          onPressedPlus: () {
                            setState(() {
                              age++;
                            });
                          },
                          onPressedMinus: () {
                            setState(() {
                              age--;
                            });
                          })),
                ],
              ),
            ),
            CalculateBmi( name: "CALCULATE YOUR BMI",ht: height,wt:weight), // Buttom  _CALCULATE YOU BMI _button
          ],
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  const IconButton(
      {super.key,
      plusIcon,
      minusIcon,
      required this.content,
      required this.number,
      required this.onPressedPlus,
      required this.onPressedMinus});
  final String content;
  final int number;
  final void Function()? onPressedPlus;
  final void Function()? onPressedMinus;

  final IconData plusIcon = FontAwesomeIcons.plus;
  final IconData minusIcon = FontAwesomeIcons.minus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          content,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
          ),
        ),
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 65,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: onPressedPlus,
              child: Icon(
                plusIcon,
                size: 35,
              ),
              backgroundColor: Color(0xFF212747),
            ),
            FloatingActionButton(
              onPressed: onPressedMinus,
              child: Icon(
                minusIcon,
                size: 40,
              ),
              backgroundColor: Color(0xFF212747),
            ),
          ],
        ),
      ],
    );
  }
}
