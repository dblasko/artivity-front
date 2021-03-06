import 'package:artivity_front/theme/style.dart';
import 'package:flutter/material.dart';

class FormTextFieldRow extends StatelessWidget {
  const FormTextFieldRow({
    Key? key,
    required this.text,
    required this.obscured,
    required this.controller
  }) : super(key: key);
  final String text;
  final bool obscured;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20, width: MediaQuery.of(context).size.width*3/10, child: Text(text.toUpperCase(), style: Styles.labelText, textAlign: TextAlign.center)),
        SizedBox(height: 40, width: MediaQuery.of(context).size.width*45/100, child: TextFormField(
          /*controller: textController,
          onFieldSubmitted: (_textController) {
            Navigator.pop(context, this.textController.text);
          },*/
          decoration: InputDecoration(
            fillColor: Styles.greyedColor,
            filled: true,
            focusColor: Styles.accentColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Styles.greyedColor),
            ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Styles.accentColor
            ),
          ),
            contentPadding: const EdgeInsets.only(
              left: 10,
              bottom:  20,
            )
        ),
          textInputAction: TextInputAction.next,
          obscureText: obscured,
          obscuringCharacter: '*',
          controller: controller,
        )),
      ],
    );
  }
}
