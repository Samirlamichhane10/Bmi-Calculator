import 'package:flutter/material.dart';

 //activeCardColor=Color(0xFF272A4E);
// inactiveCardColor =Color(0xFF101427);

class Box extends StatefulWidget {

  final int flexnum ;
  final double heightf;
  final double widthf;
  final Widget? genderIcon;
  final String? textIcon;




   const Box({super.key, required this.flexnum,required this.heightf, required  this.widthf,this.genderIcon,this.textIcon });

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
   Color activeColor=Color(0xFF272A4E);
   Color inactiveColor =Color(0xFF101427);
   Color value = Color(0xFF101427);

  get onPressed => null;
   void updateColor()
   {
     if (widget.textIcon=="MALE")
       {
         if(value==inactiveColor){

         }
       }
   }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:widget.flexnum,
      child: FractionallySizedBox(
        heightFactor: widget.heightf,
        widthFactor: widget.widthf,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
             color: value,
             // color:  const Color(0xFF1D1F33),
              borderRadius: BorderRadius.circular(10),
            ),
           // child: Buttons(genderIcon: genderIcon, textIcon: textIcon),
            child: TextButton(

              onPressed:(){}, //() {
               // setState(() {
                 // if (value==inactiveColor) {
                   // value = activeColor;
                  //} else {
                   // value = inactiveColor;
                  //}
                //});


              //},
              child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(widget.genderIcon !=null )Expanded(child: widget.genderIcon!),
                        if (widget.textIcon!=null)
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: Text(widget.textIcon!,
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                ),
                              ),
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




