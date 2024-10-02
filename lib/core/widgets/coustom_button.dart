// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double elevation;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.elevation = 2.0,
    this.icon,
    this.iconColor,
    this.textColor,
  });

  @override
  /// Builds a custom button widget.
  ///
  /// The button is a material widget with elevation and color. It contains a
  /// [Text] widget with the given text and style. If an icon is given, it will
  /// be displayed before the text.
  ///
  /// The button is wrapped in a [Padding] widget to create some space around it.
  /// The [InkWell] widget is used to detect taps.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Material(
        // The elevation is used to create a shadow under the button.
        elevation: elevation,
        // The color of the button.
        color: color,
        child: InkWell(
          // The onPressed callback is called when the button is tapped.
          onTap: onPressed,
          child: Container(
            // The padding is used to create some space between the button and
            // its content.
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Center(
              // The content of the button. If an icon is given, it will be
              // displayed before the text.
              child: icon == null
                  ? Text(text,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // The icon of the button.
                        Icon(icon, color: iconColor),
                        // The text of the button.
                        Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: textColor),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}