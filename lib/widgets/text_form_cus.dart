import 'package:ecommerce/constant/color.dart';
import 'package:flutter/material.dart';

class TextFormCus extends StatelessWidget {
  const TextFormCus({
    super.key,
    required this.hintText,
    this.suffix,
    this.prefixIcon,
  });
  final String hintText;
  final Widget? suffix;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffix,
        hintText: hintText,
        fillColor: grey30color,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
