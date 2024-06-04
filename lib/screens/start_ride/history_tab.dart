import 'package:flutter/material.dart';
import 'package:metro_riders/styles.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Styles.greyColor,
          ),
          margin: const EdgeInsets.only(top: 12),
          child: const Padding(
            padding: EdgeInsets.only(left: 8, top: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'The Gold bank',
                      style: Styles.cardTitleStyleBlack,
                    ),
                    Spacer(),
                    Text(
                      '5.3 km',
                      style: Styles.cardTitleStyleGrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '2nd street, Manchester city',
                      style: Styles.labelStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
