import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/garage/utils/CustomSmallButton.dart';

import '../../styles.dart';
import '../../Widgets/custom_app_bar.dart';

class GarageList extends StatelessWidget {
  const GarageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'My Garage',
            style: Styles.textStyleBold,
          ),
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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 17,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  // physics: const NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const CardWidget();
                  },
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return const SizedBox(
                      height: 16,

                    );
                  },
                  itemCount: 9),
            ),
            const SizedBox(height: 33,),
            Container(
            height: 48,
            decoration: BoxDecoration(
                color: Styles.greyColor,
                borderRadius: BorderRadius.circular(12)
            ),
            alignment: Alignment.center,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_box_sharp,
                  color: Styles.blackColor,),
                Text('Add a new scooter'),
              ],
            )
        ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: Styles.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Styles.greyColor,
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            const Image(
              image: AssetImage('assets/images/skoty.png'),
              width: 132,
              height: 132,
              alignment: Alignment.centerRight,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                  right: 115,
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Text(
                              'The City Pro',
                              style: Styles.labelLargeStyle,
                            ),
                          ),
                          Container(
                            width: 93,
                            margin: const EdgeInsets.only(left: 5),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: Styles.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'until 12.10.23',
                              style: Styles.labelStyle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 26),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/icons/speed.png'),
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                '20 mph',
                                style: Styles.labelStyle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              image: AssetImage('assets/icons/speed.png'),
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                '20 mph',
                                style: Styles.labelStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                       CustomSmallButton(
                        onPressed: () {
                          Get.toNamed('/the_city_pro');
                        },
                        label: 'Start Ride',
                        textColor: Styles.whiteColor,
                        buttonColor: Styles.blackColor,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
