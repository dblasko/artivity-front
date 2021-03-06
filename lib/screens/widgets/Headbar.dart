import 'package:artivity_front/theme/style.dart';
import 'package:flutter/material.dart';

class Headbar extends StatelessWidget {
  const Headbar({
    Key? key,
    required this.leftContainer,
    required this.rightContainer,
    required this.text,
    this.textStyle = Styles.pageTitleText,
    this.color= Colors.white,
    this.expanding = false,
    this.onPressed,
}): super(key: key);
  final TextStyle textStyle;
  final String text;
  final Color color;
  final bool expanding;
  final void Function()? onPressed;
  final Widget leftContainer;
  final Widget rightContainer;


  @override
  Widget build(BuildContext context) {
    /*Container(
        padding: const EdgeInsets.fromLTRB(12, 18, 12, 0),
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height*13/100,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: color,
            leading:  leftContainer,
            title:Text(text, textAlign: TextAlign.center, style: textStyle,),centerTitle: true,
            actions: [
              if(expanding)(Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(Icons.expand_circle_down_outlined,color: Colors.black)
              ),)),
              rightContainer,
            ],

          ),
        ),


    );*/

    return Container(
      padding: const EdgeInsets.fromLTRB(12, 38, 12, 0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftContainer,
          Text(text, style: Styles.pageTitleText,),
          rightContainer
        ],
      ),
    );
  }
}
