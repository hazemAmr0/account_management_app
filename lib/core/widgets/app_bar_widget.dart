

import 'package:account_management_app/core/helper/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  /// Builds the app bar with a logo and a menu button.
  ///
  /// The app bar is used in the main screen of the application.
  /// It contains a logo and a menu button.
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      /// The background color of the app bar
      backgroundColor: AppColor.background,
      /// The leading widget of the app bar
      leading: Row(
        children: [
          /// The logo of the application
          Container(
            // margin: EdgeInsets.all(8),
            padding: const EdgeInsets.all(4),
            height: 40,
            width: 35,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(
            width: 15.w,
          ),
          /// The menu button
          SizedBox(
              width: 2.w,
              child: Icon(
                Icons.timer_outlined,
                size: 30.sp,
              )),
        ],
      ),
      /// The actions of the app bar
      actions: [
        /// The menu button
        IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu)),
      ],
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(45.h);
}




