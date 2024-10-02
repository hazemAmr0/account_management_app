import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:flutter/material.dart';

class ClientTemplate extends StatelessWidget {
  const ClientTemplate({super.key});

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
          const TitleOFTemplate(
            label: 'العميل',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 120,
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColor.background,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              'جديد',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    ),
                    Expanded(
                      child: CustomDropdown(
                        height: 35,
                        initialValue: 'اختر العميل',
                        items: [
                          'اختر العميل',
                          'قالب 2',
                          'قالب 3',
                          'قالب 4',
                        ],
                        onChanged: (value) {
                          print(value);
                        },
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomDropdown(
                  height: 35,
                  initialValue: 'طباعة',
                  items: [
                    'طباعة',
                    'قالب 2',
                    'قالب 3',
                    'قالب 4',
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
