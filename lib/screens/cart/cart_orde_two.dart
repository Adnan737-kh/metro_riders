import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Strings.dart';
import 'package:metro_riders/Widgets/TwoButtons.dart';
import 'package:metro_riders/screens/cart/payment_cart.dart';
import 'package:metro_riders/styles.dart';

import '../../Widgets/tab_view.dart';
import '../auth/util/CustomTextField.dart';

class CartOrderTwo extends StatelessWidget {
  const CartOrderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.only(right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage(AppIcons.crossIcon)),
                ],
              ),
            ),
          ),
          const Text(
            'Your Order',
            style: Styles.textStyleLargeBlack,
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabView(
              labelTabOne: 'buy'.tr,
              labelTabTwo: 'rent'.tr,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 327,
            height: 36,
            decoration: BoxDecoration(
              color: Styles.greyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text(
                  'your_contacts'.tr,
                  style: Styles.cardTitleStyleBlack,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'delivery'.tr,
                  style: Styles.cardTitleStyleGrey,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'payment'.tr,
                  style: Styles.cardTitleStyleGrey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 327,
            height: 60,
            decoration: Styles.cardStyle16,
            child: Row(
              children: [
                Text(
                  'The City \$599',
                  style: Styles.textStyleLargeBlack.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const Text(
                  'x1',
                  style: Styles.textStyleLargeBlack,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 44,
                    width: 44,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Styles.whiteColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Image(image: AssetImage(AppImages.skoty))),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 12),
            child: Row(
              children: [
                Text(
                  'add_more'.tr,
                  style: Styles.textStyleLargeBlack,
                ),
              ],
            ),
          ),
          Container(
            width: 327,
            height: 269,
            decoration: Styles.cardStyle24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'delivery1'.tr,
                        style: Styles.textStyleLargeBlack.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Image(image: AssetImage(AppIcons.infoIcon)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 52,
                        width: 139.5,
                        child: CustomTextField(
                          hintText: 'country'.tr,
                        ),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        height: 52,
                        width: 139.5,
                        child: CustomTextField(
                          hintText: 'city'.tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 52,
                        width: 139.5,
                        child: CustomTextField(
                          hintText: 'first_name'.tr,
                        ),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        height: 52,
                        width: 139.5,
                        child: CustomTextField(
                          hintText: 'last_name'.tr,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: 52,
                    width: 295,
                    child: CustomTextField(
                      hintText: 'address'.tr,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TwoButtons(
              buttonOneTitle: 'back'.tr,
              buttonTwoTitle: 'next'.tr,
              onTap: () {
                Get.back();
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const PaymentCart(),);
              },
            ),
          )
        ],
      ),
    );
  }
}
