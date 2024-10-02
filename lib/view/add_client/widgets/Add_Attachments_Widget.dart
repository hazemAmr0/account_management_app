import 'package:flutter/material.dart';

class AddAttachmentsWidget extends StatelessWidget {
  const AddAttachmentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tapped');
      },
      child: Stack(
        children: [
          CustomPaint(
            size: const Size(400, 70), // Specify the size of the rectangle
            painter: DottedBorderPainter(
              color: Colors.black,
              strokeWidth: 2.0,
              dotSpacing: 4.0,
            ),
          ),
          Positioned(
            right: 10,
            child: Text(
              ' المرفقات',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 50,
            child: Text.rich(
              TextSpan(
                text: 'افلت االملف هنا او',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'اختر من الجهاز',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[800],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dotSpacing;

  DottedBorderPainter({
    required this.color,
    this.strokeWidth = 2.0,
    this.dotSpacing = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.fill;

    final path = Path();

    // Calculate the number of dots for each side
    final horizontalDots = (size.width / (strokeWidth + dotSpacing)).floor();
    final verticalDots = (size.height / (strokeWidth + dotSpacing)).floor();

    // Draw dots along the top edge
    for (int i = 0; i < horizontalDots; i++) {
      final x = i * (strokeWidth + dotSpacing);
      path.addOval(
          Rect.fromCircle(center: Offset(x, 0), radius: strokeWidth / 2));
    }

    // Draw dots along the right edge
    for (int i = 0; i < verticalDots; i++) {
      final y = i * (strokeWidth + dotSpacing);
      path.addOval(Rect.fromCircle(
          center: Offset(size.width, y), radius: strokeWidth / 2));
    }

    // Draw dots along the bottom edge
    for (int i = 0; i < horizontalDots; i++) {
      final x = size.width - i * (strokeWidth + dotSpacing);
      path.addOval(Rect.fromCircle(
          center: Offset(x, size.height), radius: strokeWidth / 2));
    }

    // Draw dots along the left edge
    for (int i = 0; i < verticalDots; i++) {
      final y = size.height - i * (strokeWidth + dotSpacing);
      path.addOval(
          Rect.fromCircle(center: Offset(0, y), radius: strokeWidth / 2));
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
