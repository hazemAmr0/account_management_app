// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double height;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextField({
    Key? key,
    this.width = double.infinity,
    required this.height,
    this.hintText = 'البحث عن طريق الفواتير',
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height,
        width: width,
        child: TextField(

          decoration: InputDecoration(
            hintText: hintText,

            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.black),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            // Adds suffix icon conditionally
          ),
        ),
      ),
    );
  }
}
