  
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String? _selectedType = 'فردي'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // "تجاري" radio button
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('تجاري', style: TextStyle(fontSize: 12)),
            Radio<String>(
              value: 'تجاري',
              groupValue: _selectedType,
              onChanged: (String? value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
          ],
        ),
        // "فردي" radio button
        Row(
          children: [
            Text('فردي', style: TextStyle(fontSize: 12)),
            Radio<String>(
              value: 'فردي',
              groupValue: _selectedType,
              onChanged: (String? value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
