import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/TwoButtons.dart';

import '../../Strings.dart';
import '../../styles.dart';

class AddMore extends StatelessWidget {
  const AddMore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      child: Column(children: [
        InkWell(
          onTap: () => Get.back(),
          child: const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
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
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 59,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.blackColor,
                ),
                child: Center(
                  child: Text(
                    'rent'.tr,
                    style: Styles.textStyleLargeBlack
                        .copyWith(color: Styles.whiteColor),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 32,
                width: 59,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.greyColor,
                ),
                child: Center(
                  child: Text(
                    'buy'.tr,
                    style: Styles.cardTitleStyleGrey,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 32,
                width: 38,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.greyColor,
                ),
                child: Center(
                  child: Text(
                    'x1'.tr,
                    style: Styles.cardTitleStyleGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          width: 327,
          child: DropdownButtonFormField(
            hint: Text('the_city_pro'.tr,
              style: Styles.cardTitleStyleGrey,),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )
              ),
              fillColor: Styles.whiteColor,
            ),
            items: null, onChanged: (value) {

          },),
        ),
        const SizedBox(height: 12,),
        Container(
          width: 327,
          height: 288,
          decoration: Styles.cardStyle16,
          child: const Image(image: AssetImage(AppImages.skoty)),
        ),
         Padding(
          padding: EdgeInsets.all(20.0),
          child: TwoButtons(
            buttonTwoTitle: 'Conform',
            buttonOneTitle: 'Back',
            onTap: () {
              Get.back();
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const AddMoreTwo(),);
            },
          ),
        )
      ]),
    );
  }
}


class AddMoreTwo extends StatelessWidget {
  const AddMoreTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      child: Column(children: [
        InkWell(
          onTap: () => Get.back(),
          child: const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
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
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 59,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.blackColor,
                ),
                child: Center(
                  child: Text(
                    'rent'.tr,
                    style: Styles.textStyleLargeBlack
                        .copyWith(color: Styles.whiteColor),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 32,
                width: 59,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.greyColor,
                ),
                child: Center(
                  child: Text(
                    'buy'.tr,
                    style: Styles.cardTitleStyleGrey,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 32,
                width: 38,
                decoration: Styles.cardStyle16.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.greyColor,
                ),
                child: Center(
                  child: Text(
                    'x1'.tr,
                    style: Styles.cardTitleStyleGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          width: 327,
          child: DropdownButtonFormField(
            hint: Text('the_city_pro'.tr,
              style: Styles.cardTitleStyleGrey,),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )
              ),
              fillColor: Styles.whiteColor,
            ),
            items: null, onChanged: (value) {

          },),
        ),
        const SizedBox(height: 12,),
        Container(
          width: 327,
          height: 288,
          decoration: Styles.cardStyle16,
          child: const Image(image: AssetImage(AppImages.skoty)),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: TwoButtons(
            buttonTwoTitle: 'Conform',
            buttonOneTitle: 'Back',
          ),
        )
      ]),
    );
  }
}
