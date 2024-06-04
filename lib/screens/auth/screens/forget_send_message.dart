import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/SubmitButton.dart';

import '../../../styles.dart';


class ForgotMessage extends StatelessWidget {
  const ForgotMessage({Key? key});

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
                    Image.asset('assets/icons/message.png'),
                    SizedBox(height: 18.0,),
                    Center(
                      child: Text(
                        'an_email_with'.tr,
                        style: Styles.textStyleBold,
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
