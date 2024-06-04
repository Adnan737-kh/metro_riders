import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/auth/screens/signin.dart';
import 'package:metro_riders/screens/auth/screens/signup.dart';
import 'package:metro_riders/utility/controller.dart';

import '../../styles.dart';
import '../../Widgets/SubmitButton.dart';
import '../auth/util/emailWidget.dart';
import '../auth/util/password_widget.dart';
import '../auth/util/pincodewidget.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 24, top: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'restore_password'.tr,
                          style: Styles.textStyleBold,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        _buildTabView(),
                        SizedBox(
                          height: 400,
                          child: TabBarView(
                              controller: myTab.controller,
                              children: const [
                                EmailWidget(),
                                PasswordWidget(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                  child: SubmitButton(onTap: () {
                    Get.toNamed('/conform_code');
                  }, title: 'continue'.tr)),
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
        width: 300,
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
              child: Text('email_hint'.tr),
            ),
            Tab(
              child: Text('label_phone_number'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
