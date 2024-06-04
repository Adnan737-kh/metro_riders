import 'package:flutter/material.dart';
import '../../../styles.dart';

class CardViewWidget extends StatelessWidget {
  final String imageUrl;
  final String leftLabelImageUrl;
  final String leftLabel;
  final String? rightLabel;
  final double cardWidth;
  final double cardHeight;

  CardViewWidget({super.key,
    required this.imageUrl,
    required this.leftLabelImageUrl,
    required this.leftLabel,
    this.rightLabel,
    required this.cardWidth,
    required this.cardHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: Styles.appThemeColor.withOpacity(0.50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        height: 220,
        width: 327,
        padding: const EdgeInsets.all(12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Image.asset(leftLabelImageUrl),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        leftLabel,
                        style: Styles.labelStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.whiteColor,
                ),
                child: Text(rightLabel ?? '', style: Styles.labelStyle),
              ),
            ),
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 188.0, // adjust the height as needed
              width: 188.0,
            ),
          ],
        ),
      ),
    );
  }
}
