import 'package:account_management_app/view/Sessions/Sessions_page.dart';
import 'package:account_management_app/view/add_client/add_client_page.dart';
import 'package:account_management_app/view/auth/domain_page.dart';
import 'package:account_management_app/view/auth/login_page.dart';
import 'package:account_management_app/view/create_bail/create_bail_page.dart';
import 'package:account_management_app/view/home/home_page.dart';
import 'package:account_management_app/view/pos_shifts/pos_shift_page_1.dart';
import 'package:account_management_app/view/pos_shifts/pos_shift_page_3.dart';
import 'package:account_management_app/view/pos_shifts/pos_shifts_page2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          theme: ThemeData(
            useMaterial3: false,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Account Management App',
          home: const DomainPage(),

          // to test all pages //
          //AddClientPage(),
          // SessionsPage(),
          // HomePage(),
          //PosShiftsPageOne(),
          //PosShiftsPageTwo(),
          //PosShiftsPageThree(),
          //const AddClientPage(),
          //const AddClientPage(),
          //LoginPage(),
          //DomainPage(),
          //CreateBailPage(),
          ),
    );
  }
}
