import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../styles.dart';
import '../../Widgets/SubmitButton.dart';
import '../auth/util/pincodewidget.dart';

class CodeConform extends StatelessWidget {
  const CodeConform({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 24, top: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'restore_password'.tr,
                          style: Styles.textStyleBold,
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 4
                          ),
                          child: Text(
                            'a_confirmation_code_to_reset'.tr,
                            style: Styles.textStyleLight.copyWith(
                              height: 1.40,
                            ),
                            maxLines: 2,
                          ),
                        ),

                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CustomPinCodeWidget(
                      context: context,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: SubmitButton(
                      onTap: () {
                        Get.toNamed('/create_password');
                      },
                      title: 'conform'.tr)),
            ),
          ],
        ),
      ),
    );
  }
}
