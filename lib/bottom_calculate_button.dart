import 'package:bmi_calculator/hom_page.dart';
import 'package:bmi_calculator/second_screen.dart';
import 'functionality_result.dart';
import 'main_second_screen.dart';
import 'package:flutter/material.dart';

class CalculateBmi extends StatelessWidget {
  const CalculateBmi({super.key, required this.name,required this.wt,required this.ht});
  final String name;
  final int wt;
  final int ht;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFEA1556),
          ),
          child: FractionallySizedBox(
            widthFactor: 1,
            child: TextButton(
              onPressed: () {
                if (name == "CALCULATE YOUR BMI") {
                   Functionality finalCalc=Functionality(height: ht, weight: wt);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen( finalBmi: finalCalc.bmi(), level: finalCalc.getResult(),recommend: finalCalc.getNote(),)),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Result()),);
              },
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
