import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/store/widgets/StoreCardView.dart';
import '../../Widgets/TwoButtons.dart';
import '../../Widgets/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../utility/ScondCardView.dart';

class TheCityProStore extends StatelessWidget {
  TheCityProStore({super.key});

  int sliderIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('The City Pro'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return  const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StoreCardView(
                      imageUrl: 'assets/images/skoty.png',
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
          const SizedBox(height: 16,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: SecondCadView(),
          ),
           Padding(
            padding: EdgeInsets.all(12.0),
            child: TwoButtons(
              buttonOneTitle: 'Buy / \$599',
              buttonTwoTitle: 'Rent / \$59mo',
              onTap: () {
                Get.toNamed('/bags_cross_body');
              },
            ),
          ),
        ],
      ),
    );
  }

}

