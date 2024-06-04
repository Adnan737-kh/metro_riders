import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/auth/screens/signin.dart';
import 'package:metro_riders/screens/auth/util/CustomTextField.dart';
import '../../../styles.dart';
import '../../../Widgets/SubmitButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 68, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("signup".tr, style: Styles.textStyleBold),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Text(
                  'already_have_an_account'.tr,
                  style: Styles.textStyleLight,
                ),
                const SizedBox(
                  width: 2,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/');
                  },
                  child: Text('sign_in'.tr,
                      style: Styles.textStyleLight
                          .copyWith(decoration: TextDecoration.underline)),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              hintText: 'email_hint'.tr,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              hintText: 'password_hint'.tr,
              isuffixIconPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
                child: Text(
              'by_clicking_“sign_up”'.tr,
              style: Styles.textStyleLight,
            )),
            Expanded(
              child: Container(), // Empty container to take up remaining space
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: SubmitButton(
                onTap: () {},
                title: 'signup'.tr,
              ),
            )
          ],
        ),
      ),
    );
  }
}
