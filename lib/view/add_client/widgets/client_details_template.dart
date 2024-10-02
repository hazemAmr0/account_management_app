import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:account_management_app/view/add_client/widgets/Radio_Button_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientDetailsTemplate extends StatelessWidget {
  const ClientDetailsTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      child: Column(
        children: [
          const TitleOFTemplate(label: ' بيانات العميل '),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RadioButtonWidget(),
                    Text(' بيانات العميل ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 5),
                CustomTextField(
                  height: 35,
                  hintText: 'ألاسم بالكامل',
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  hintText: 'الهاتف',
                  height: 35,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  hintText: 'الجوال',
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      hintText: 'المدينة',
                      height: 35,
                    )),
                    SizedBox(width: 5),
                    Expanded(
                      child: CustomDropdown(
                        items: ['البلد', 'عقد1', 'سعر الوحدة'],
                        width: double.infinity,
                        initialValue: 'البلد',
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      hintText: 'المنطقة',
                      height: 35,
                    )),
                    SizedBox(width: 5),
                    Expanded(
                      child: Expanded(
                          child: CustomTextField(
                        hintText: 'المنطقة',
                        height: 35,
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'المنطقة',
                  height: 35,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
