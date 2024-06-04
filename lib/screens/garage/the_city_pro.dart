import 'package:flutter/material.dart';
import 'package:metro_riders/screens/garage/utils/CardView.dart';
import 'package:metro_riders/screens/garage/utils/CardViewTwo.dart';
import '../../styles.dart';
import '../../Widgets/SubmitButton.dart';

class TheCityPro extends StatelessWidget {
  const TheCityPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: showModalBottomSheet(
      //     context: context, builder: (BuildContext context) {
      //       return MapBottomNavigation(),
      // },),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('The City',),
      ),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 17.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardViewWidget(
              cardHeight:312 ,
              cardWidth: 327,
              imageUrl: 'assets/images/skoty.png',
              leftLabel: '92%',
              leftLabelImageUrl: 'assets/icons/fill.png',
            ),
            const SizedBox(height: 16),
            const CardViewTwo(),
            const SizedBox(height: 16),
            SubmitButton(
              onTap: () {
              },
              title: 'Start ride',
              backGroundColor: Styles.blackColor,
            )
          ],
        ),
      ),
    );
  }
}




