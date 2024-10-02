import 'package:account_management_app/view/auth/widgets/about_us_widget.dart';
import 'package:account_management_app/view/auth/widgets/custom_textform.dart';
import 'package:flutter/material.dart';
import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/coustom_button.dart';
import 'package:account_management_app/view/auth/widgets/app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Import your custom widget

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override

  /// Builds the login page
  ///
  /// This widget is used to display the login page.
  /// It includes a form with fields for the email and password,
  /// as well as a button to submit the form.
  ///
  /// The form is validated using the [Form] widget and the
  /// [TextFormField] widget. The [TextFormField] widget is used
  /// to validate the input and to display an error message if
  /// the input is invalid.
  ///
  /// The [CustomButton] widget is used to display the button that
  /// submits the form.
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainBackground,
      appBar: const AppBarWidget(),
      body: Form(
        key: _formKey, // Use the form key for validation
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 40.0.h, right: 12.0.w, left: 12.0.w),
              child: const Text(
                'تسجيل الدخول',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomTextFormField(
                /// The hint text for the email field
                hintText: 'البريد الالكتروني',

                /// The keyboard type for the email field
                keyboardType: TextInputType.emailAddress,

                /// The controller for the email field
                controller: _emailController,

                /// The validator for the email field
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال البريد الإلكتروني';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'يرجى إدخال بريد إلكتروني صالح';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomTextFormField(
                /// The hint text for the password field
                hintText: 'كلمة المرور',

                /// The password field is obscured
                isPassword: true,

                /// The controller for the password field
                controller: _passwordController,

                /// The validator for the password field
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال كلمة المرور';
                  }
                  if (value.length < 6) {
                    return 'كلمة المرور يجب أن تكون على الأقل 6 أحرف';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'نسيت كلمه المرور؟',
              style: TextStyle(
                  color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text.rich(
              TextSpan(
                text: 'هل لديك حساب؟ ',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'حساب جديد ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomButton(
                /// The text for the button
                text: 'تسجيل الدخول',

                /// The on pressed callback for the button
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, handle the login logic
                    print('Login');
                  }
                },

                /// The color for the button
                color: AppColor.background,

                /// The text color for the button
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              color: Colors.black,
              thickness: .5,
            ),
            const AboutUsWidget(),
          ],
        ),
      ),
    );
  }
}
