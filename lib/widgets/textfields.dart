import 'package:collegex/theme/colors.dart';
import 'package:collegex/widgets/buttons.dart';
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


//-- auth field

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final Color? color;
  const AuthField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.validator,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      height: 50,
      width: 305,
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.black,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.white60),
              borderRadius: BorderRadius.all(
                  Radius.circular(8))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.cyanAccent),
            borderRadius: BorderRadius.all(
                Radius.circular(8)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.cyanAccent),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
