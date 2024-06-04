import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/history/widgets/listview_item.dart';

import '../../styles.dart';
import '../../Widgets/custom_app_bar.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: const Text('History',style: Styles.textStyleBold,),
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
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {

        return InkWell(
          onTap: () {
            Get.toNamed('/history_the_city');
          },
            child:  ListViewItem(
              title: 'the_city'.tr,
              time: 'Today',
              imageUrl: 'assets/images/skoty.png',
              backArrow: 'assets/icons/arrowRight.png',
            ));

      },),
    );
  }
}



