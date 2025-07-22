import 'package:flutter/material.dart';
import 'package:threads_project/utils/type_def.dart';


class AuthInput extends StatelessWidget {
  final String label, hintText;
  final bool ispassword;
  final TextEditingController controller;
  final ValidatorCallback validatorCallback;

  const AuthInput({
    Key? key,
    required this.hintText,
    required this.label,
    required this.validatorCallback,
    this.ispassword = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ispassword,
      validator: validatorCallback,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: label,
        hintText: hintText,
      ),
    );
  }
}

