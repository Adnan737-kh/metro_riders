import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/auth/util/CustomTextField.dart';
import 'package:metro_riders/styles.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30,right: 28),
        child: Column(
          children: [
            Text(
              'enter_your_email_address'.tr,
              style: Styles.textStyleLight,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'email_hint'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
