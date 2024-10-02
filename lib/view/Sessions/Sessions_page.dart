
import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/app_bar_widget.dart';
import 'package:account_management_app/core/widgets/custom_drawer_menu.dart';
import 'package:account_management_app/core/widgets/custom_drop_down.dart';
import 'package:account_management_app/view/Sessions/widgets/session_details.dart';
import 'package:flutter/material.dart';

class SessionsPage extends StatelessWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const CustomDrawerMenu(),
      appBar: const CustomAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12/09/2024 ',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColor.background,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' الجلسه :1',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.background,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'موظف الخزينة :   ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                    text: ' شركة أفكار ومفاهيم',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  )]
              ),
              ),
            CustomDropdown(
              labelText: '  الوردية',
              items: const [
                'إختر الوردية ',
                'شركة استراليا',
                'شركة أفكار ومفاهيم'
              ], // Add the initial value here
              width: MediaQuery.of(context).size.width,
              initialValue: 'إختر الوردية ', // Must match an item in the list
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropdown(
              labelText: '  الفترة',
              items: const [
                'إختر الجهاز',
                'شركة استراليا',
                'شركة أفكار ومفاهيم'
              ], // Add the initial value here
              width: MediaQuery.of(context).size.width,
              initialValue: 'إختر الجهاز', // Must match an item in the list
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 10,
            ),
             Expanded(
               child: ListView(
                shrinkWrap: false,
                children: [
                  SessionDetails(
                    deviceNumber: "1",
                    shiftNumber: "1",
                    sessionNumber: "1",
                  ),
                  SessionDetails(
                    deviceNumber: "1",
                    shiftNumber: "1",
                    sessionNumber: "1",
                ),
                ],
                             ),
             ),
            
          ],
        ),
      ),
    );
  }
}

