import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:account_management_app/view/create_bail/widgets/add_new_term_button.dart';
import 'package:flutter/material.dart';

class SearchTemplateTwo extends StatelessWidget {
  const SearchTemplateTwo({
    super.key,
  });

  @override

  /// Builds the search template widget
  ///
  /// This widget displays the search template. It includes a text field to enter
  /// the session number, a dropdown to select the device, a dropdown to select
  /// the ward, a dropdown to select the state, a dropdown to select the added
  /// by, two times to select the time to open or close, and two buttons to
  /// search and cancel.
  ///
  /// The width of the text fields and the dropdowns is set to double.infinity.
  /// The height of the text fields and the dropdowns is set to 35 pixels.
  ///
  /// The [onChanged] callback for the dropdowns is set to print the selected
  /// value.
  ///
  /// The [items] for the dropdowns is set to ['الجهاز', 'جهاز 2', 'جهاز 3',
  /// 'جهاز 4'].
  ///
  /// The [labelText] for the dropdowns is set to 'الجهاز', 'الورديه', 'الحاله',
  /// and 'أضيفت بواسطة' respectively.
  ///
  /// The [initialValue] for the dropdowns is set to 'الجهاز', 'الورديه', 'الحاله',
  /// and 'أضيفت بواسطة' respectively.
  ///
  /// The [onTap] callback for the buttons is set to do nothing.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            child: Column(
              children: [
                const TitleOFTemplate(
                  label: 'بحث',
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      /// A text field to enter the session number
                      CustomTextField(
                        height: 32,
                        hintText: 'رقم الجلسه',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      /// A dropdown to select the device
                      CustomDropdown(
                        items: const [
                          'الجهاز',
                          'جهاز 2',
                          'جهاز 3',
                          'جهاز 4',
                        ],
                        width: double.infinity,
                        height: 35,
                        initialValue: 'الجهاز',
                        labelText: 'الجهاز',
                        onChanged: (value) => print(value),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      /// A dropdown to select the ward
                      CustomDropdown(
                        items: const [
                          'الورديه',
                          'جهاز 2',
                          'جهاز 3',
                          'جهاز 4',
                        ],
                        width: double.infinity,
                        height: 35,
                        initialValue: 'الورديه',
                        labelText: 'الورديه',
                        onChanged: (value) => print(value),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      /// A dropdown to select the state
                      CustomDropdown(
                        items: const [
                          'الحاله',
                          'جهاز 2',
                          'جهاز 3',
                          'جهاز 4',
                        ],
                        width: double.infinity,
                        height: 35,
                        initialValue: 'الحاله',
                        labelText: 'الحاله',
                        onChanged: (value) => print(value),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      /// A dropdown to select the added by
                      CustomDropdown(
                        items: const [
                          'أضيفت بواسطة',
                          'جهاز 2',
                          'جهاز 3',
                          'جهاز 4',
                        ],
                        width: double.infinity,
                        height: 35,
                        initialValue: 'أضيفت بواسطة',
                        labelText: 'أضيفت بواسطة',
                        onChanged: (value) => print(value),
                      ),
                    
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          /// A button to search
                          CustomButtonWidget(
                              width: 60,
                              icon: Icons.search,
                              label: 'بحث',
                              color: AppColor.background,
                              onTap: () {}),

                          /// A button to cancel
                          CustomButtonWidget(
                              width: 60,
                              icon: Icons.close,
                              label: 'إلغاء',
                              color: AppColor.secondary,
                              onTap: () {}),
                          const Spacer(),

                          /// A button to filter
                          Container(
                            color: Colors.grey,
                            child: const Icon(Icons.filter_alt_rounded),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } // SearchTemplate
}
