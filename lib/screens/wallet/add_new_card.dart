import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Strings.dart';
import 'package:metro_riders/styles.dart';

import '../../Widgets/SubmitButton.dart';
import '../../Widgets/custom_app_bar.dart';

class AddMyCard extends StatelessWidget {
  const AddMyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: const Text('Wallet'),
          action: [
            Icon(
              Icons.shopping_cart,
              size: 24,
              color: Styles.appBarIconColor.withOpacity(0.60),
              weight: 18.0,
            ),
            const SizedBox(
              width: 12,
            ),
            Icon(
              Icons.notifications,
              size: 24,
              color: Styles.appBarIconColor.withOpacity(0.60),
            ),
            const SizedBox(
              width: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 28.0,
              ),
              child: Icon(
                Icons.person_4,
                size: 24,
                color: Styles.appBarIconColor.withOpacity(0.60),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 180,
                width: 327,
                margin: const EdgeInsets.only(top: 30),
                decoration: Styles.cardStyle16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(
                        AppIcons.cardAdd,
                      ),
                    ),
                    const SizedBox(height: 28),
                    Text('you_dont_have_any'.tr,
                      style: Styles.cardTitleStyleGrey.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SubmitButton(onTap: () {
                Get.back();
                Get.toNamed('/add_new_card');
              }, title: 'add_a_new_card'.tr),
            ),
          ],
        ));
  }
}
