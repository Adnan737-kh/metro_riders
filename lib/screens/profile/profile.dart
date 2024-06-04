import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Strings.dart';
import 'package:metro_riders/screens/auth/util/CustomTextField.dart';
import 'package:metro_riders/styles.dart';

import '../../Widgets/custom_app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 248,
              width: 327,
              decoration: Styles.cardStyle24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 62,
                    backgroundImage: AssetImage(AppImages.profile),
                    child: Image.asset(AppImages.profile),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'vino_costa'.tr,
                    style: Styles.textStyleLargeBlack,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'change_photo'.tr,
                    style: Styles.labelStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 327,
            height: 192,
            decoration: Styles.cardStyle24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 22),
                  child: Text(
                    'phone_number'.tr,
                    style: Styles.labelStyle,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: SizedBox(
                    height: 52,
                    width: 295,
                    child: CustomTextField(
                      hintColor: Styles.blackColor,
                      hintText: '+1 048 058 28 74',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 22),
                  child: Text(
                    'your_email'.tr,
                    style: Styles.labelStyle,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: SizedBox(
                    height: 52,
                    width: 295,
                    child: CustomTextField(
                      hintColor: Styles.blackColor,
                      hintText: 'vinocosta@gmail.com',
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Text('Log out',
            textAlign: TextAlign.end,
            style: Styles.labelStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),),
        ],
      ),
    );
  }
}
