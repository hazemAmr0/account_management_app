import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:flutter/material.dart';

class SelectBailTemplate extends StatelessWidget {
  const SelectBailTemplate({
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
          const TitleOFTemplate(
            label: 'إختيار قالب الفاتورة',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomDropdown(
                  height: 35,
                  initialValue: 'القالب الأساسي',
                  items: [
                    'القالب الأساسي',
                    'قالب 2',
                    'قالب 3',
                    'قالب 4',
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomDropdown(
                  height: 35,
                  initialValue: 'التصميم الافتراضي للفاتورة',
                  items: [
                    'التصميم الافتراضي للفاتورة',
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
