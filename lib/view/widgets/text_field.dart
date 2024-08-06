import 'package:flutter/material.dart';
import 'package:tiktok/constant.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String LabelText;
  final IconData icon;
  final bool isobsucre;

  const InputField({
    super.key,
    required this.controller,
    required this.LabelText,
    required this.icon,
    this.isobsucre = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: LabelText,
        prefixIcon: Icon(icon),
        labelStyle: TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
      ),
      obscureText: isobsucre,
    );
  }
}
