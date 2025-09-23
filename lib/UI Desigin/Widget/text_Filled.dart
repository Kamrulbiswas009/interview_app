import 'package:flutter/material.dart';

class Text_Filled extends StatelessWidget {
  const Text_Filled({
    super.key,
    required this.hintText,
    this.icon,
    this.controller,
    required this.obscureText,
    required this.keyboardType,
  });
  final String hintText;
  final IconData? icon;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType:
          keyboardType ??
          (obscureText
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress),

      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class Text_Filed_Heading extends StatelessWidget {
  const Text_Filed_Heading({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
