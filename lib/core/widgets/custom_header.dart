import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
   const CustomHeader({
    this.child1,
    this.child2,
    this.child3,
    this.child4,
    super.key});
  final Widget? child1;
  final Widget? child3;
  final Widget? child2;
  final Widget? child4;

  @override
  /// Builds a custom header widget with a green and red square and two additional
  /// widgets.
  ///
  /// The widget consists of a row with the green square, a red square, a spacer,
  /// the first additional widget, a small space, and the second additional
  /// widget.
  ///
  /// The green square is always visible, the red square is only visible if
  /// [child2] is not null, and the two additional widgets are always visible.
  ///
  /// The additional widgets are displayed in the order they are passed to the
  /// constructor: [child1], [child2], [child3] and [child4].
  ///
  /// The widget is a [Material] with an elevation of 7.
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        child: Row(
          children: [
            /// The green square
            Container(
              height: 35,
              color: Colors.green[700],
              child: child1,
            ),
            SizedBox(width: 5),
            /// The red square
            if (child2 != null) ...[
              Container(
                height: 35,
                color: Colors.red,
                child: child2,
              ),
            ],
            const Spacer(),
            /// The first additional widget
            if (child3 != null) ...[
              Container(
                child: child3,
              ),
            ],
            const SizedBox(
              width: 10,
            ),
            /// The second additional widget
            if (child4 != null) ...[
              SizedBox(
                child: child4,
              ),
            ],
          ],
        ),
      ),
    );
  }
}


