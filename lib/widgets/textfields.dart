import 'package:collegex/theme/colors.dart';
import 'package:flutter/material.dart';

class xTextField extends StatelessWidget {
  //this need to be edited as we move along
  /* required this.txtController,
    required this.fun, */
  const xTextField(
      {super.key,
      required this.hintText,
      required this.isPassword, required this.textInputType});
  final String hintText;
  final bool isPassword;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: TextStyle(
        color: xColors.white,
        fontStyle: FontStyle.normal,
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: xColors.white,
      decoration: InputDecoration(
          iconColor: xColors.white,
          labelStyle:
              TextStyle(color: xColors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(20)),
            borderSide:
                BorderSide(color: xColors.white),
          ),
          filled: true,
          fillColor: xColors.black,
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(20)),
              borderSide: BorderSide(
                  color: xColors.white)),
          hintText: hintText,
          hintStyle:
              TextStyle(color: xColors.white)),
    );
  }
}
