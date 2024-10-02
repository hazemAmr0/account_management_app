import 'package:account_management_app/core/widgets/custom_title_of_template.dart';
import 'package:flutter/material.dart';

class SessionDetails extends StatelessWidget {
  final String deviceNumber;
  final String shiftNumber;
  final String sessionNumber;
  

  SessionDetails({
    Key? key,
    required this.deviceNumber,
    required this.shiftNumber,
    required this.sessionNumber,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      // padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleOFTemplate(label: 'تفاصيل الجلسة'),
          Table(
            children: [
              TableRow(
                children: [
                  textCenterIcon("رقم الجهاز"),
                  textCenterIcon("رقم الوردية"),
                  textCenterIcon("رقم الجلسة"),
                ],
              ),
              TableRow(
                children: [
                  textCenterIcon(deviceNumber),
                  textCenterIcon(shiftNumber),
                  textCenterIcon(sessionNumber),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Handle cancel action
                    print('Cancel Pressed');
                  },
                  child: Container(
                    height: 30, // Set height to your desired size
                    decoration: const BoxDecoration(
                      color: Colors.red, // Red background for cancel
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8), // Rounded left corner
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'إلغاء',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Handle cancel action
                    print('Cancel Pressed');
                  },
                  child: Container(
                    height: 30, // Set height to your desired size
                    decoration: const BoxDecoration(
                      color: Colors.green, // Red background for cancel
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8), // Rounded left corner
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'تأكيد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget textCenterIcon(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Color(0xFF272727),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
