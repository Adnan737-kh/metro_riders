import 'package:flutter/material.dart';
import 'package:metro_riders/styles.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem(
      {super.key,
        this.imageUrl,
        this.title,
        this.time,
        this.backArrow,
        this.labelColor,
        this.radius,
        this.height,
      });

  final String? imageUrl;
  final String? title;
  final String? time;
  final String? backArrow;
  final TextStyle? labelColor;
  final double? radius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12),
          color: Styles.greyColor,
        ),
        child: Row(
          children: [
            imageUrl != null ?  Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(left: 4),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.whiteColor,
                ),
                child: Image(
                  image: AssetImage(imageUrl ?? ''),
                )):const SizedBox(),
            const SizedBox(
              width: 10,
            ),
             Text(
              title ?? '',
              style: labelColor ?? Styles.labelLargeStyle ,
            ),
            const Spacer(),
             Text(
              time ?? '',
              style: Styles.labelStyle,
            ),
            const Spacer(),
             Image(
              image: AssetImage(backArrow ?? ''),
            )
          ],
        ),
      ),
    );
  }
}
