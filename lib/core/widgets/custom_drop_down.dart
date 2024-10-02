import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? labelText;
  final List<String> items;
  final double width;
  final double height;
  final ValueChanged<String?>? onChanged;
  final String? initialValue;

  CustomDropdown({
    this.height = 35.0,
     this.labelText,
    required this.items,
    required this.width,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height, // Set the height of the widget
      child: Directionality(
        textDirection: TextDirection.rtl, // Right-to-left text direction
        child: DropdownButtonFormField<String>(
          value: initialValue,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: const BorderSide(color: Colors.black),
            ),
          ),
          icon:
              const Icon(Icons.arrow_drop_down, size: 20), // Dropdown icon size
          items: items.map((label) {
            return DropdownMenuItem(
              value: label,
              child: Text(
                label,
                style: const TextStyle(fontSize: 12), // Adjust the font size
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
