import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/store/scooters.dart';
import 'package:metro_riders/Widgets/custom_app_bar.dart';

import '../../styles.dart';
import '../../utility/controller.dart';
import 'accessories.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return Scaffold(
      appBar: CustomAppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text('Store',style: Styles.textStyleBold,),
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
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(child: _buildTabView()),
            Expanded(
              child: TabBarView(
                  controller: myTab.controller,
                  children:  [
                    Scooters(),
                    Accessories(),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabView() {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 40,
        width: 340,
        decoration: BoxDecoration(
          color: Styles.greyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TabBar(
          controller: myTab.controller,
          labelPadding: EdgeInsets.zero,
          labelColor: Styles.whiteColor,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: Styles.blackColor,
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          // indicatorPadding: const EdgeInsets.all(2.0),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.blackColor),
          tabs: [
            Tab(
              child: Text('scooters'.tr),
            ),
            Tab(
              child: Text('accessories'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
