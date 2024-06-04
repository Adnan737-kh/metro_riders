import 'package:flutter/material.dart';

import '../../styles.dart';

class Scooters extends StatelessWidget {
  const Scooters({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 264,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: Styles.greyColor,
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/skoty.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 140,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Styles.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'The City',
                              style: Styles.labelLargeStyle,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            _buildFrame(
                              context,
                              mphCounter: '500',
                              acceleration: '18 mph',
                              oneHundredWightOne:
                              'assets/icons/speed.png',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            _buildFrame(
                              context,
                              mphCounter: '500',
                              acceleration: '18 mph',
                              oneHundredWightOne: 'assets/icons/mph.png',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _buildFrame(
      BuildContext context, {
        required String oneHundredWightOne,
        required String acceleration,
        required String mphCounter,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 7.0,
          ),
          child: Row(
            children: [
              Image.asset(oneHundredWightOne),
              const SizedBox(width: 5),
              Text(
                acceleration,
                style: Styles.labelStyle,
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          mphCounter,
          style: Styles.labelStyleBlack,
        ),
      ],
    );
  }

}
