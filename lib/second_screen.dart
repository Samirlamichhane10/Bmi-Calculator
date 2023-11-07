import 'package:flutter/material.dart';
import 'bottom_calculate_button.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key,required this.recommend,required this.finalBmi,required this.level});
  final String level;//Normal ,overweight, underweight
  final String finalBmi;//value of bmi
  final String recommend;//you have normal good job

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR",),
          centerTitle: true,
        ),
        body:Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("YOUR FINAL RESULT:",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,
                fontSize: 25,
              ),),
            ),

            Expanded(flex:13,
              child: FractionallySizedBox(
                widthFactor: 1,

                child: Container(
                  margin: EdgeInsets.all(20) ,
                  decoration:BoxDecoration(
                    color: Color(0xFF1D1F33),
                  ),
                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(level,style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                      ),
                      Text(finalBmi,style: TextStyle(
                        fontSize: 85,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      ),
                      Text("Normal BMI Range: \n  \t 18.5-25 kg/m2",

                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ), ),

                      Text(recommend,

                      textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ), ),


                    ],
                  ),

                ),
              ),
            ),

            Expanded(flex:2,
              child: CalculateBmi(name:"RE-CALCULATE YOUR BMI",ht:0,wt:0),),


          ],
        )

      ),
    );
  }
}
