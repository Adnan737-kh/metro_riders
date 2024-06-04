import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles.dart';
import '../../Widgets/SubmitButton.dart';
import '../auth/util/CustomTextField.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 68, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("restore_password".tr, style: Styles.textStyleBold),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'create_a_new_password_for_your_account'.tr,
                    style: Styles.textStyleLight.copyWith(

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              hintText: 'password_hint'.tr,
              isuffixIconPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              hintText: 'conform_password'.tr,
              isuffixIconPassword: true,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'the_new_password_do_not_match'.tr,
                style: Styles.textStyleLight.copyWith(

                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(), // Empty container to take up remaining space
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: SubmitButton(
                onTap: () {
                  Get.toNamed('/dash_board');
                },
                title: 'reset_and_log_in'.tr,
              ),
            )
          ],
        ),
      ),
    );
  }
}
