



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateField extends StatefulWidget {
  final String hintText;
  final double width;

  const CustomDateField({
    Key? key,
    required this.hintText,
    required this.width,
  }) : super(key: key);

  @override
  _CustomDateFieldState createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  final TextEditingController _dateController = TextEditingController();

  @override
  /// Builds a date picker widget with a hint text and a given width.
  ///
  /// The widget consists of a container with a border and a rounded corner
  /// radius. Inside the container, it displays a calendar icon and a text
  /// field.
  ///
  /// When the user taps on the widget, it opens the date picker dialog.
  /// Once the user selects a date, it formats the date and updates the
  /// text controller.
  ///
  /// The [hintText] parameter is used as a hint text when the text controller
  /// is empty.
  ///
  /// The [width] parameter is used to set the width of the container.
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Open date picker
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );

        if (pickedDate != null) {
          // Format the date and update the controller
          String formattedDate = DateFormat('d/M/yyyy').format(pickedDate);
          setState(() {
            _dateController.text = formattedDate; // Display the selected date
          });
        }
      },
      child: Container(
        width: widget.width,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.calendar_today,
                color: Colors.grey,
                size: 12,
              ),
            ),
            Expanded(
              child: Text(
                _dateController.text.isEmpty
                    ? widget.hintText
                    : _dateController.text,
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
