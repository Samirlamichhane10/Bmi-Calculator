import 'package:flutter/material.dart';



class Buttons extends StatefulWidget {
  Buttons({
    super.key,
    required this.genderIcon,
    required this.textIcon,
  });



  final Widget? genderIcon;
  final String? textIcon;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {

  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: () {

      },
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
    );
  }
}