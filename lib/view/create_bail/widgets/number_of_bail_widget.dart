import 'package:flutter/material.dart';

class NumberOfBail extends StatelessWidget {
  final String numOfBail;
  const NumberOfBail({
    required this.numOfBail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.grey),
          ),
          child: Text(numOfBail),
        ),
        const Text(
          'رقم الفاتوره',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
