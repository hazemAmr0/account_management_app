import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/coustom_button.dart';
import 'package:account_management_app/view/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DomainPage extends StatelessWidget {
  const DomainPage({super.key});

  @override
  /// A screen to select a domain name or to create a new one
  ///
  /// This screen is the main entry point for the application and it is used to
  /// select a domain name or to create a new one. It consists of a logo at the
  /// top, a text field to enter the domain name, a button to go back, a button
  /// to go to the next screen, and a button to create a new domain. The
  /// background color of the screen is the same as the background color of the
  /// application. The text color of the text field and the button is white.
  ///
  /// If the user selects a domain name or creates a new one, the application
  /// will navigate to the next screen. If the user clicks the back button, the
  /// application will go back to the previous screen. If the user clicks the
  /// create new domain button, the application will show a dialog to enter the
  /// new domain name. If the user clicks the next button, the application will
  /// navigate to the next screen.
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.0.h),
            child: Container(
              width: double.infinity.w,
              height: double.infinity.h,
              decoration: BoxDecoration(
                color: AppColor.mainBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 1.2,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    icon: Icons.check,
                    iconColor: AppColor.accent,
                    text: 'إسم النطاق ',
                    onPressed: () {},
                    color: AppColor.mainBackground,
                    elevation: 10,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    icon: Icons.arrow_back,
                    iconColor: AppColor.mainBackground,
                    text: 'التالي ',
                    onPressed: () {
                      Navigator.push( context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    color: AppColor.background,
                    elevation: 4,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    icon: Icons.party_mode_outlined,
                    iconColor: AppColor.mainBackground,
                    text: 'قارئ الباركود ',
                    onPressed: () {},
                    color: Colors.black,
                    elevation: 4,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'أو',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    icon: Icons.add,
                    iconColor: AppColor.mainBackground,
                    text: ' إنشاء حساب  ',
                    onPressed: () {

                    },
                    color: Colors.green,
                    elevation: 4,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'إدارة الحسابات',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
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
