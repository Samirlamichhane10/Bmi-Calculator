import 'package:flutter/material.dart';

Widget box({required int flexnum ,required double heightf, required double widthf,})
{
  return Expanded(
    flex:flexnum,
    child: FractionallySizedBox(
      heightFactor: heightf,
      widthFactor: widthf,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color:  Color(0xFF1D1F33),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text("male"),
            ),
          ),
        ),
      ),

    );

}
/*
class Box extends StatelessWidget {

final int flexnum ;
final double heightf;
final double widthf;
final Widget? genderIcon;
final String? textIcon;

const Box({super.key, required this.flexnum,required this.heightf, required  this.widthf,this.genderIcon,this.textIcon });
@override
Widget build(BuildContext context) {
return Expanded(
flex:flexnum,
child: FractionallySizedBox(
heightFactor: heightf,
widthFactor: widthf,
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
decoration: BoxDecoration(
color: Theme.of(context).canvasColor,
// color:  const Color(0xFF1D1F33),
borderRadius: BorderRadius.circular(10),
),
child: Buttons(genderIcon: genderIcon, textIcon: textIcon),
),
),
),
);
}
}
*/
 /*import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Box extends StatelessWidget {

  final int flexnum ;
  final double heightf;
  final double widthf;
  final Widget? genderIcon;
  final String? textIcon;

   const Box({super.key, required this.flexnum,required this.heightf, required  this.widthf,this.genderIcon,this.textIcon });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:flexnum,
      child: FractionallySizedBox(
        heightFactor: heightf,
        widthFactor: widthf,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
             color: Theme.of(context).canvasColor,
             // color:  const Color(0xFF1D1F33),
              borderRadius: BorderRadius.circular(10),
            ),
           // child: Buttons(genderIcon: genderIcon, textIcon: textIcon),
            child: TextButton(

              onPressed: () {

              },
              child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(genderIcon !=null )Expanded(child: genderIcon!),
                        if (textIcon!=null)
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: Text(textIcon!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                      ],
                    );
                  }
              ),
            ),
          ),

        ),
      ),
    );
  }
}




*/
