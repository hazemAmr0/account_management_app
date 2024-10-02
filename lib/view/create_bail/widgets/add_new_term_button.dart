
import 'package:flutter/material.dart';


class CustomButtonWidget extends StatelessWidget {
   const CustomButtonWidget({
    required this.label,
    required this.color,
    super.key,
    this.icon,
  required this.onTap,
  this.width=120,
  });
final Color color;
final String label;
final IconData? icon;
final Function() onTap;
final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 20, bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width:width,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.zero,
            color: color,
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             if (icon != null) Icon(icon,color: Colors.white,),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
