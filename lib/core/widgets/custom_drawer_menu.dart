import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerMenu extends StatelessWidget {
  const CustomDrawerMenu({super.key});

  @override
  /// Builds the custom drawer menu widget.
  ///
  /// The widget displays a navigation drawer with a header containing the
  /// application logo and a list of navigation items. The navigation items
  /// are as follows:
  ///
  /// - [لوحة التحكم] (Home)
  /// - [المبيعات] (Sales)
  /// - [العملاء] (Clients)
  /// - [الاعدادات] (Settings)
  /// - [المبيعات المستهدفة] (Target Sales)
  ///
  /// The navigation items are displayed in a [ListView] with a [DrawerHeader]
  /// as the header. The [DrawerHeader] contains the logo of the application.
  ///
  /// The width of the drawer is set to 250 logical pixels.
  /// The background color of the drawer is set to white.
  ///
  /// The [onTap] callback of the [ListTile] is set to a no-op function.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250.w,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Header with Logo
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white, // Change color as needed
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png',
                    height: 100), // Replace with your logo
              ],
            ),
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
            leading: const Icon(Icons.home, color: Colors.black),
            title: const Text('لوحة التحكم'),
            onTap: () {}, // No-op
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
            leading: const Icon(Icons.shopping_cart, color: Colors.black),
            title: const Text('المبيعات'),
            onTap: () {}, // No-op
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
            leading: const Icon(Icons.account_circle, color: Colors.black),
            title: const Text('العملاء'),
            onTap: () {}, // No-op
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
            leading: const Icon(Icons.settings, color: Colors.black),
            title: const Text('الاعدادات'),
            onTap: () {}, // No-op
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
            leading: const Icon(Icons.logout, color: Colors.black),
            title: const Text('المبيعات المستهدفة '),
            onTap: () {}, // No-op
          ),
        ],
      ),
    );
  }
}
