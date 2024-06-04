import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Widgets/TwoButtons.dart';
import 'package:metro_riders/Widgets/custom_app_bar.dart';
import 'package:metro_riders/styles.dart';

import '../garage/utils/CardView.dart';

class HistoryTheCity extends StatelessWidget {
  const HistoryTheCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        centerTitle: true,
        title: Text('The City'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CardViewWidget(
              cardHeight:312 ,
              cardWidth: 327,
              imageUrl: 'assets/images/skoty.png',
              leftLabel: '92%',
              rightLabel: 'until 12.10.23',
              leftLabelImageUrl: 'assets/icons/fill.png',
            ),
            const SizedBox(height: 12,),
            _buildItemWidget(context),
            const SizedBox(height: 12,),
            _buildItemWidget(context),
            const SizedBox(height: 12,),
            _buildItemWidget(context),
            const SizedBox(height: 17,),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: TwoButtons(
                buttonTwoTitle: 'Start ride',
                buttonOneTitle: 'Extend the lease',
                onTap: () => Get.toNamed('/the_street_pro') ,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(BuildContext context){
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
            SizedBox(width: 10,),
            Text('Trip time:',style: Styles.bodyMedium,),
            Spacer(),
            Text('16 min'),
          ],
        ),
      ),
    );
  }
}
