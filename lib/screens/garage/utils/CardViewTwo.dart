import 'package:flutter/material.dart';
import '../../../styles.dart';

class CardViewTwo extends StatelessWidget {
  const CardViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Styles.greyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/speed.png',
              acceleration: 'Top Speed',
              mphCounter: '20mph',
            ),
            const SizedBox(height: 16.0,),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/mph.png',
              acceleration: 'Acceleration',
              mphCounter: '24 mph',
            ),
            const SizedBox(height: 16.0,),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/range.png',
              acceleration: 'Rang',
              mphCounter: '12 mi',
            ),
            const SizedBox(height: 16.0,),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/car.png',
              acceleration: 'Transportations',
              mphCounter: '12 mi ',
            ),

            const SizedBox(height: 16.0,),
            _buildFrame(
              context,
              oneHundredWightOne: 'assets/icons/time.png',
              acceleration: 'Charge time (80%)',
              mphCounter: '3.5 hr',
            ),
            const SizedBox(height: 16.0,),
          ],
        )
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
              const SizedBox(width: 6,),
              Text(
                acceleration,
                style: Styles.textStyleLight,
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          mphCounter,
          style: Styles.labelLargeStyle,
        ),
      ],
    );
  }
}
