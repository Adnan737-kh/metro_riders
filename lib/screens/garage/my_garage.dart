import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/garage/utils/CardView.dart';
import '../../styles.dart';
import '../../Widgets/custom_app_bar.dart';
import '../cart/cart.dart';

class MyGarage extends StatelessWidget {
  const MyGarage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            'my_garage'.tr,
            style: Styles.textStyleBold,
          ),
        ),
        action: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const CartOrderOne();
                },
              );
            },
            child: Icon(
              Icons.shopping_cart,
              size: 24,
              color: Styles.appBarIconColor.withOpacity(0.60),
              weight: 18.0,
            ),
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
            child: InkWell(
              onTap: () {
                Get.toNamed('/profile_menu');
              },
              child: Icon(
                Icons.person_4,
                size: 24,
                color: Styles.appBarIconColor.withOpacity(0.60),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 17.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardViewWidget(
              cardHeight: 220,
              cardWidth: 327,
              imageUrl: 'assets/images/skoty.png',
              leftLabel: '36%',
              rightLabel: 'until 12.10.23',
              leftLabelImageUrl: 'assets/icons/fill.png',
            ),
            const SizedBox(
              height: 16,
            ),
            _buildFrameNew(context),
            const SizedBox(
              height: 24,
            ),
            _buildAddNewScooter(context),
            const SizedBox(
              height: 16,
            ),
            _buildTwoButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFrameNew(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Styles.greyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Top Speed',
              mphCounter: '20mph',
            ),
            const SizedBox(
              height: 16.0,
            ),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Acceleration',
              mphCounter: '24 mph',
            ),
            const SizedBox(
              height: 16.0,
            ),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Rang',
              mphCounter: '12 mi',
            ),
            const SizedBox(
              height: 16.0,
            ),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Transportations',
              mphCounter: '12 mi ',
            ),
            const SizedBox(
              height: 16.0,
            ),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Charge time (80%)',
              mphCounter: '3.5 hr',
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ));
  }

  Widget _buildFrame(
    BuildContext context, {
    required String oneHundredWightOne,
    required String acceleration,
    required String mphCounter,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 7.0,
          ),
          child: Text(
            acceleration,
            style: Styles.textStyleLight,
          ),
        ),
        const Spacer(),
        Text(
          mphCounter,
          style: Styles.textStyleLight,
        ),
      ],
    );
  }

  Widget _buildAddNewScooter(BuildContext context) {
    return Container(
        height: 48,
        decoration: BoxDecoration(
            color: Styles.greyColor, borderRadius: BorderRadius.circular(12)),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/plus.png'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'add_a_new_scooter'.tr,
              style: Styles.labelLargeStyle,
            ),
          ],
        ));
  }

  Widget _buildTwoButtons(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 156,
              height: double.infinity,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  'Extend the lease',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.toNamed('/garage_list');
              },
              child: Container(
                width: 156,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'Start ride',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
