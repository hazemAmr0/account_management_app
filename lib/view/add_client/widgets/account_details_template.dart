import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:account_management_app/view/add_client/widgets/Add_Attachments_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountDetailsTemplate extends StatelessWidget {
  const AccountDetailsTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        child: Column(
          children: [
            const TitleOFTemplate(label: ' بيانات الحساب '),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextField(
                    height: 35,
                    hintText: 'رقم الكود',
                  ),
                  SizedBox(height: 10.h),
                  CustomDropdown(
                    items: ['طريقة الفوترة', 'عقد1', 'سعر الوحدة'],
                    width: double.infinity,
                    initialValue: 'طريقة الفوترة',
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.h),
                  CustomDropdown(
                    items: ['العملة', 'عقد1', 'سعر الوحدة'],
                    width: double.infinity,
                    initialValue: 'العملة',
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hintText: 'البريد الإلكتروني',
                    height: 35,
                  ),
                  SizedBox(height: 10.h),
                  CustomDropdown(
                    items: ['التصنيف', 'عقد1', 'سعر الوحدة'],
                    width: double.infinity,
                    initialValue: 'التصنيف',
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hintText: 'الملاحظات',
                    height: 70,
                  ),
                  SizedBox(height: 10.h),
                  const AddAttachmentsWidget(),
                  SizedBox(height: 10.h),
                  CustomDropdown(
                    items: ['لغة العرض', 'عقد1', 'سعر الوحدة'],
                    width: double.infinity,
                    initialValue: 'لغة العرض',
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
