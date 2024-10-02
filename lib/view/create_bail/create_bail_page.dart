import 'package:account_management_app/core/helper/app_color.dart';
import 'package:account_management_app/core/widgets/app_bar_widget.dart';
import 'package:account_management_app/core/widgets/custom_drawer_menu.dart';
import 'package:account_management_app/core/widgets/custom_header.dart';
import 'package:account_management_app/view/create_bail/widgets/add_new_term_button.dart';
import 'package:account_management_app/view/create_bail/widgets/bail_details_%20template_widget.dart';
import 'package:account_management_app/view/create_bail/widgets/client_Template.dart';
import 'package:account_management_app/view/create_bail/widgets/select_bail_template.dart';
import 'package:account_management_app/view/create_bail/widgets/term_details_template.dart';
import 'package:flutter/material.dart';
class CreateBailPage extends StatelessWidget {
  const CreateBailPage({super.key});



  /// Builds the create bail page
  ///
  /// This widget is used to display the create bail page.
  /// It includes a header, a select bail template, a client template, a bail
  /// details template, a term details template, and an add new term button.
  ///
  /// The [SingleChildScrollView] widget is used to enable scrolling.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: CustomDrawerMenu(),
      appBar: CustomAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// Displays the header
            CustomHeader(
             child1: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  'حفظ وطباعه',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              child3:   Container(
              height: 35,
              color: Colors.grey,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'مسوده',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
            child4:  Container(
                height: 35,
                color: AppColor.background,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'pdf',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))),
            ),
            SizedBox(height: 20),

            /// Displays the select bail template
            SelectBailTemplate(),
            SizedBox(height: 20),

            /// Displays the client template
            ClientTemplate(),
            SizedBox(height: 20),

            /// Displays the bail details template
            BailDetailsTemplate(),
            SizedBox(height: 20),

            /// Displays the term details template
            TermDetailsTemplate(),
            SizedBox(height: 10),

            /// Displays the add new term button
            CustomButtonWidget(
              onTap: (){},
              label: 'إضافة عنصر جديد', color: AppColor.background,icon:  Icons.add,),
          ],
        ),
      ),
    );
  }
}
