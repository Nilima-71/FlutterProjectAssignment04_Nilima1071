import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, labeltext, hintText, prefixIcon, validator;
  final obscureText;

  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.labeltext,
    required this.prefixIcon,
    required this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      validator: validator,
    );
  }
}
