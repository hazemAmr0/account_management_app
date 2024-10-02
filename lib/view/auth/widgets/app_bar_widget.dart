import 'package:account_management_app/core/helper/app_color.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
            Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                  child: Text(
                ' دخول',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 25,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                  child: Text(
                'حساب جديد',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              )),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
      leading: Image.asset(
        'assets/images/logo.png',
        scale: 5,
      ),
      elevation: 7,
      backgroundColor: AppColor.mainBackground,
      //backgroundColor: AppColor.mainBackground,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
