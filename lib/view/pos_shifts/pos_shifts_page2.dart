
import 'package:account_management_app/core/widgets/app_bar_widget.dart';
import 'package:account_management_app/core/widgets/custom_drawer_menu.dart';
import 'package:account_management_app/core/widgets/custom_header.dart';
import 'package:account_management_app/view/pos_shifts/widgets/search_template2.dart';
import 'package:flutter/material.dart';


class PosShiftsPageTwo extends StatelessWidget {
  const PosShiftsPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerMenu(),
      appBar: const CustomAppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /// Displays the header
          CustomHeader(
            child1: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              ),
            ),
            child4: Container(
              height: 35,
              color: Colors.blueGrey,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
         const SearchTemplateTwo(),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            padding: const EdgeInsets.all(8),
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.grey,
              
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('الحالة'),

                 Text('المبيعات'),
                  Text('فتح / إغلاق'),
                   Text('موظف الخزنة'),
                    Text('رقم الجلسة'),
              ],
            ),
          
           ),
         ),
        ],
      ),
    );
  }
}


