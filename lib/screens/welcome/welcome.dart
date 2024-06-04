import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/SubmitButton.dart';

import '../../styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/tickCircle.png'),
                    Text(
                      'congratulations'.tr,
                      style: Styles.textStyleBold,
                    ),
                    Center(
                      child: Text(
                        'you_successfully_signed_up_in-metro'.tr,
                        style: Styles.textStyleLight,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                child: SubmitButton(onTap: () {}, title: 'Home')),
          ),
        ],
      ),
    );
  }
}
