import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/SubmitButton.dart';
import 'package:metro_riders/screens/auth/util/CustomTextField.dart';
import '../../Strings.dart';
import '../../styles.dart';
import '../../Widgets/custom_app_bar.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Padding(
          padding:EdgeInsets.only(left: 24.0),
          child: Text('Wallet',style: Styles.textStyleBold,),
        ),
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
          CreditCardWidget(
            textStyle: const TextStyle(
              color: Styles.blackColor,
            ),
            cardBgColor: Styles.greyColor,
            cardNumber: '283283837',
            expiryDate: 'expiryDate',
            cardHolderName: 'cardHolderName',
            cvvCode: 'cvvCode',
            showBackView: false, //true when you want to show cvv(back) view
            onCreditCardWidgetChange: (CreditCardBrand
                brand) {}, // Callback for anytime credit card brand is changed
          ),
          CreditCardWidget(
            textStyle: const TextStyle(
              color: Styles.blackColor,
            ),
            cardBgColor: Styles.greyColor,
            cardNumber: '283283837',
            expiryDate: 'expiryDate',
            cardHolderName: 'cardHolderName',
            cvvCode: 'cvvCode',
            showBackView: false, //true when you want to show cvv(back) view
            onCreditCardWidgetChange: (CreditCardBrand
                brand) {}, // Callback for anytime credit card brand is changed
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SubmitButton(
                onTap: () {
                  Get.toNamed('/add_new_card');
                  // Get.back();
                  // showModalBottomSheet(
                  //   isScrollControlled: true,
                  //   context: context,
                  //   builder: (context) => const AddNewCard(),
                  // );
                },
                title: 'add_a_new_card'.tr),
          ),
        ],
      ),
    );
  }
}

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.60,
      width: double.infinity,
      child: Column(
        children: [
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
            'Add a new Card',
            style: Styles.textStyleLargeBlack,
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 152,
            width: 327,
            decoration: Styles.cardStyle16,
            child:  Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 52,
                  width: 295,
                  child: CustomTextField(
                    hintText: '0000 0000 0000 0000',
                    fillColor: Colors.white,
                    hintColor: Styles.greyColor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 52,
                  width: 295,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 52,
                        width: 135,
                        child: CustomTextField(
                          borderRadius: BorderRadius.circular(16),
                          hintText: 'MM / YY',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 52,
                        width: 139.5,
                        child: CustomTextField(
                          borderRadius: BorderRadius.circular(16),
                          hintText: 'CVV',
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SubmitButton(onTap: () {
              Get.back();
              Get.toNamed('/add_new_card');
            }, title: 'Add'),
          ),
        ],
      ),
    );
  }
}
