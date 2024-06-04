import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles.dart';
import '../utility/controller.dart';

class TabView extends StatelessWidget {
  const TabView({
    super.key,
    required this.labelTabOne,
    required this.labelTabTwo,
  });
  final String labelTabOne;
  final String labelTabTwo;

  @override
  Widget build(BuildContext context) {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 40,
        width: 327,
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
              child: Text(labelTabOne),
            ),
            Tab(
              child: Text(labelTabTwo),
            ),
          ],
        ),
      ),
    );
  }
}
