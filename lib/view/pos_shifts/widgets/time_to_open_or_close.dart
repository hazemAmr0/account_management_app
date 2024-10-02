import 'package:account_management_app/core/widgets/custom_Data_Field.dart';
import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class TimeToOpenOrCloseWidget extends StatelessWidget {
  const TimeToOpenOrCloseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDateField(
            hintText: '',
            width: double.infinity,
          ),
        ),
        const Text(
          ' الي',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
        Expanded(
          child: const CustomDateField(
            hintText: '',
            width: double.infinity,
          ),
        ),
        const Text(
          ' من',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
        const SizedBox(
          width: 5,
        ),
        CustomDropdown(
          items: [
            'وقت الفتح',
            ' صباحا',
            'جهاز 3',
            'جهاز 4',
          ],
          width: 90,
          height: 35,
          initialValue: 'وقت الفتح',
          labelText: 'وقت الفتح',
          onChanged: (value) => print(value),
        ),
      ],
    );
  }
}
