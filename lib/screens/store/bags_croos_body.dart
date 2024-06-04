import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/store/widgets/StoreCardView.dart';

import '../../Widgets/SubmitButton.dart';
import '../../Widgets/custom_app_bar.dart';
import '../../styles.dart';

class BagsCrossBody extends StatelessWidget {
  BagsCrossBody({super.key});

  List<String> productFeatures = [
    '#5 YKK water resistant zippers',
    'Adjustable 1.5" nylon shoulder strap ',
    'Nylon Ripstop lining',
    'Internal organization for phone, wallet and glasses',
    'Black & Camo Fabric: Dimension Polyant® X-Pac Shell'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text('bags_crossbody'.tr),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StoreCardView(
                        imageUrl: 'assets/images/bag.png',
                        cardWidth: 300,
                        cardHeight: 368,
                        icon1Path: 'assets/icons/cart.png',
                        icon2Path: 'assets/icons/heart.png',
                      ),
                    ],
                  );
                },
                options: CarouselOptions(
                  height: 268,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {},
                )),
            SizedBox(height: 16),
            Container(
              width: 327,
              height: 247,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Styles.greyColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/speed.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'size',
                            style: Styles.textStyleLight,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        '9" H x 10.5" W x 4.25" D',
                        style: Styles.labelLargeStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    height: 347,
                    width: 327,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         const Text(
                          'Features:',
                          style: Styles.labelStyleGrey,
                        ),
                        const SizedBox(height: 12,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: productFeatures.length,
                              itemBuilder:
                                (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('.  ${productFeatures[index]}',
                                style: Styles.labelStyleBlack),
                              );
                            },),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SubmitButton(
                titleColor: Styles.whiteColor,
                onTap: () {
                  Get.toNamed('/start_ride');
                  }, title: 'buy_now'.tr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
