import 'package:flutter/material.dart';

class TitleOFTemplate extends StatelessWidget {
  final String label;
  const TitleOFTemplate({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          )),
      child: Center(
          child: Text(
        label,
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
      )),
    );
  }
}
