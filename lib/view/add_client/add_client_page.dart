import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/app_bar_widget.dart';

import 'package:account_management_app/core/widgets/custom_drawer_menu.dart';

import 'package:account_management_app/core/widgets/custom_header.dart';

import 'package:account_management_app/view/add_client/widgets/account_details_template.dart';
import 'package:account_management_app/view/add_client/widgets/client_details_template.dart';
import 'package:account_management_app/view/create_bail/widgets/add_new_term_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddClientPage extends StatelessWidget {
  const AddClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      drawer: const CustomDrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// Displays the header
            CustomHeader(
              child1: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  'حفظ ',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              child2: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                label: const Text(
                  ' إلغاء',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const ClientDetailsTemplate(),
            CustomButtonWidget(
              color: AppColor.background,
              label: 'إضافة عنوان ثانوي',
              onTap: () {},
              icon: Icons.add,
            ),
            SizedBox(height: 10.h),
            const AccountDetailsTemplate(),
          ],
        ),
      ),
    );
  }
}
