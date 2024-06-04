import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/SubmitButton.dart';
import 'package:metro_riders/screens/history/widgets/listview_item.dart';

import '../../Widgets/custom_app_bar.dart';
import '../../styles.dart';
import '../garage/utils/CardView.dart';

class TheStreetPro extends StatelessWidget {
  TheStreetPro({super.key});
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        centerTitle: true,
        title: Text('The Street Pro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CardViewWidget(
              cardHeight: 312,
              cardWidth: 327,
              imageUrl: 'assets/images/skoty.png',
              leftLabel: '36%',

              // rightLabel: 'until 12.10.23',
              leftLabelImageUrl: 'assets/icons/fill.png',
            ),
            const SizedBox(
              height: 12,
            ),
            _buildItemWidget(context),
            const SizedBox(
              height: 12,
            ),
            _buildItemWidget(context),
            const SizedBox(
              height: 12,
            ),
            _buildItemWidget(context),
            const SizedBox(
              height: 17,
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: SubmitButton(
                  title: 'Start Ride',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          width: 375,
                          height: 279,
                          child: Column(
                            children: [
                              Text('your_trips'.tr),
                              ListViewItem(
                                height: 48,
                                radius: 16,
                                labelColor: Styles.textStyleLight,
                                title: 'the_city'.tr,
                                backArrow: 'assets/icons/arrowRight.png',
                              ),
                              ListViewItem(
                                height: 48,
                                radius: 16,
                                labelColor: Styles.textStyleLight,
                                title: 'the_city'.tr,
                                backArrow: 'assets/icons/arrowRight.png',
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed('/start_ride');
                                },
                                child: ListViewItem(
                                  height: 48,
                                  radius: 16,
                                  labelColor: Styles.textStyleLight,
                                  title: 'the_city'.tr,
                                  backArrow: 'assets/icons/arrowRight.png',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(BuildContext context) {
    return Container(
      height: 48,
      width: 327,
      decoration: BoxDecoration(
        color: Styles.greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image: AssetImage('assets/icons/time.png')),
            SizedBox(
              width: 10,
            ),
            Text('Trip time:'),
            Spacer(),
            Text('16 min'),
          ],
        ),
      ),
    );
  }
}
