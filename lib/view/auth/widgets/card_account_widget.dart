import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/coustom_button.dart';
import 'package:account_management_app/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardAccountWidget extends StatelessWidget {
  const CardAccountWidget({
    super.key,
  });

  @override
  /// Builds a card widget to display an account information
  ///
  /// This widget is used to display an account information in a card.
  /// It includes a logo, the account name, the account URL,
  /// a button to hide the information, and a button to go to the next screen.
  ///
  /// The widget is colored with [AppColor.cardBackground] and the text is
  /// colored with [AppColor.textSecondary].
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      width: 300,
      child: Card(
        elevation: 10,
        color: AppColor.cardBackground,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  /// The logo of the account
                  Image.asset(
                    'assets/images/logo.png',
                    scale: 5,
                  ),
                  const SizedBox(width: 20),
                  /// The account information
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// The account name
                      Text(
                        'شركة أفكار ومفاهيم العربية',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      /// The account URL
                      Text(
                        'i-c.daftra.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.textSecondary),
                      ),
                    ],
                  ),
                  const Spacer(),
                  /// The button to hide the information
                  const Text(
                    'إخفاء',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              /// The button to go to the next screen
              CustomButton(
                iconColor: Colors.white,
                text: ' التالي',
                onPressed: () {
                  // TODO: Implement navigation
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                color: AppColor.background,
                textColor: Colors.white,
                icon: Icons.arrow_back,
                elevation: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
