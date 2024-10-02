import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermDetailsTemplate extends StatelessWidget {
  const TermDetailsTemplate({super.key});

  @override
  /// Builds the term details template widget
  ///
  /// This widget displays the term details template. It includes a drop down
  /// to select the term, a text field to enter the description, a row with
  /// text fields to enter the unit price and quantity, and a row with a drop
  /// down to select the tax and a text field to enter the discount.
  ///
  /// The width of the text fields and the drop down is set to 381 pixels.
  /// The height of the text fields and the drop down is set to 35 pixels.
  ///
  /// The [onChanged] callback for the drop down is set to print the selected
  /// value.
  ///
  /// The [initialValue] for the drop down is set to 'البند'.
  ///
  /// The [items] for the drop down is set to ['البند', 'عقد1', 'سعر الوحدة'].
  ///
  /// The [labelText] for the drop down is set to 'الضريبة'.
  ///
  /// The [onChanged] callback for the drop down is set to print the selected
  /// value.
  ///
  /// The [items] for the drop down is set to ['الضريبة', 'Tax 2', 'Tax 3'].
  ///
  /// The [suffixIcon] for the discount text field is set to a percentage icon
  /// with a size of 20 pixels.
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
              children: [
                /// A drop down to select the term
                CustomDropdown(
                  onChanged: (value) => print(value),
                  initialValue: 'البند',
                  items: ['البند', 'عقد1', 'سعر الوحدة'],
                  width: 381,
                  height: 35,
                ),
                const SizedBox(height: 10),
                /// A text field to enter the description
                CustomTextField(
                  width: 381,
                  height: 35,
                  hintText: 'الوصف',
                ),
                const SizedBox(height: 10),
                /// A row with text fields to enter the unit price and quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// A text field to enter the unit price
                    CustomTextField(
                      width: 140.w,
                      height: 35,
                      hintText: 'سعر الوحدة',
                    ),
                    const SizedBox(width: 10),
                    /// A text field to enter the quantity
                    CustomTextField(
                      width: 140.w,
                      height: 35,
                      hintText: 'الكمية',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                /// A row with a drop down to select the tax and a text field to enter the discount
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// A drop down to select the tax
                    CustomDropdown(
                      labelText: 'الضريبة',
                      initialValue: 'الضريبة',
                      items: ['الضريبة', 'Tax 2', 'Tax 3'],
                      width: 140,
                      height: 31,
                      onChanged: (value) => print(value),
                    ),
                    const SizedBox(width: 10),
                    /// A text field to enter the discount
                    CustomTextField(
                      width: 140,
                      height: 35,
                      hintText: 'الخصم',
                      suffixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.percent, size: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
