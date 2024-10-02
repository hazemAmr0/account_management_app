// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:account_management_app/core/widgets/custom_drawer_menu.dart';
import 'package:account_management_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of strings to display in the GridView
    final List<String> items = [  
      'بدأ البيع',
      'إنشاء فاتورة',
      'الجلسات',
      'الفواتير',
      'العملاء',
      'عميل جديد',
    ];
    return Scaffold(
      drawer: const CustomDrawerMenu(),
      appBar: const CustomAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '12/09/2024',
              style: TextStyle(fontSize: 12, color: AppColor.background),
            ),
            const SizedBox(height: 10),
            const Text.rich(TextSpan(
                text: 'أهلا أحمد الشافعي, ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: ',مرحبا بعودتك',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                ])),
            const SizedBox(height: 20),
            CustomTextField(
              height: 40,
              hintText: 'البحث عن طريق الفواتير',
              width: double.infinity,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              height: 40,
              hintText: 'البحث عن العملاء',
              width: double.infinity,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 cards per row
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 3 / 2, // Adjust the aspect ratio as needed
                ),
                itemCount: 6, // 3 rows * 2 columns = 6 cards
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Handle card tap
                      print('Card $index tapped');
                    },
                    child: Card(
                      elevation: 5,
                      child: Center(
                        child: Text(
                          items[index],
                          style: const TextStyle(
                              fontSize: 16,
                              color: AppColor.background,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 4.w,
              child: Row(
                
                children: [
                  Container(
                    height: 40,
                    width:270,
                    decoration: BoxDecoration(color: AppColor.textButton,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color:Colors.grey),
              
                    ),
                    child: Row(
                      children: [
                          TextButton.icon(
                            icon: Icon(Icons.edit_document,color: Colors.grey,size: 20,),
                            onPressed: () {},
                            label: Text('ألاحدث',style: TextStyle(color: Colors.grey,fontSize: 12),)),
                              TextButton.icon(
                            icon: Icon(Icons.edit_document,color: Colors.grey,size: 20,),
                            onPressed: () {},
                            label: Text('الربح والخسارة',style: TextStyle(color: Colors.grey,fontSize: 12),)),
                        TextButton.icon(
                            icon: Icon(Icons.edit_document,color: Colors.grey,size: 20,),
                            onPressed: () {},
                            label: Text('الفواتير',style: TextStyle(color: Colors.grey,fontSize: 12),)),
                      ],
                    ),
                  ),
                  Text(
                    'المبيعات',
                    style: TextStyle(
                        color: AppColor.background,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
