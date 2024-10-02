import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/custom_Data_Field.dart';
import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:account_management_app/view/create_bail/widgets/number_of_bail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BailDetailsTemplate extends StatelessWidget {
  const BailDetailsTemplate({super.key});

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
          const TitleOFTemplate(label: 'تفاصيل الفاتورة'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CustomDateField(
                      hintText: ' 12/09/2024',
                      width: 120.w,
                    ),
                    const Text(
                      ' ت الفاتوره',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const NumberOfBail(numOfBail: '5454'),
                  ],
                ),
                const SizedBox(height: 20),
                CustomDropdown(
                  items: const [
                    'القالب الأساسي',
                    'قالب 2',
                    'قالب 3',
                    'قالب 4',
                  ],
                  width: double.infinity,
                  initialValue: 'القالب الأساسي',
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(height: 10.h),
                const CustomDateField(
                  hintText: 'تاريخ الإصدار',
                  width: double.infinity,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  hintText: 'شروط الدفع',
                  height: 35,
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      color: AppColor.background,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        Text(
                          'إضافة عنصر جديد',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
