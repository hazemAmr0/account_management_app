
import 'package:account_management_app/core/widgets/coustom_button.dart';
import 'package:account_management_app/view/auth/widgets/card_account_widget.dart';
import 'package:flutter/material.dart';


class ManageAccountPage extends StatelessWidget {
  const ManageAccountPage({super.key});

  @override
  /// Builds the manage account page
  ///
  /// This widget is used to display the manage account page.
  /// It includes a back button, a title, a card to display the account
  /// information, and a button to create a new account.
  ///
  /// The [CardAccountWidget] is used to display the account information.
  ///
  /// The button is used to create a new account.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            // Back button
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, // TODO: Implement navigation
                    icon: const Icon(Icons.arrow_back_rounded, size: 30))),
            const SizedBox(height: 20),
            // Title
            const Text('إدارة الحسابات',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            // Card to display the account information
            const Center(
              child: const CardAccountWidget(),
            ),
            const Spacer(),
            // Button to create a new account
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 15.0),
              child: CustomButton(
                text: ' إنشاء حساب جديد ',
                onPressed: () {}, // TODO: Implement navigation
                color: Colors.green,
                textColor: Colors.white,
                icon: Icons.add,
                iconColor: Colors.white,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

