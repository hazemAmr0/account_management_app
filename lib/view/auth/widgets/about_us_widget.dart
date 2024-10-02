import 'package:account_management_app/core/helper/app_color.dart';
import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text('معلومات عنا ',
            style: TextStyle(
                color: AppColor.background,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 15,
        ),
        Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: const Text(
                  'نحن شركة أفكار ومفاهيم نسعى دائماً لتقديم أفضل الحلول الدعائية لخدمة أحتياجات عملائنا فيما  يتناسب مع طبيعة عملهم وخدماتهم وإن نكون المجموعة الرائدة في المجال  التسويقي والتنظيمي في الشرق الأوسط',
                ))),
      ],
    );
  }
}
