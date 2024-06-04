import 'package:flutter/material.dart';
import '../../../styles.dart';

class StoreCardView extends StatelessWidget {
  final String imageUrl;
  final String? leftLabelImageUrl;

  final String? icon1Path;
  final String? icon2Path;
  final double cardWidth;
  final double cardHeight;

  const StoreCardView({
    super.key,
    required this.imageUrl,
    this.leftLabelImageUrl,
    required this.cardWidth,
    required this.cardHeight,
    this.icon1Path,
    this.icon2Path,
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
        height: 268,
        width: 327,
        padding: const EdgeInsets.all(12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Image.asset(icon1Path ?? '', width: 24, height: 24),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(icon2Path ?? '', width: 24, height: 24),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/arrowLeft.png'),
                  Image.asset(
                    imageUrl,
                    height: 188.0, // adjust the height as needed
                    width: 240.0,
                  ),
                  Image.asset('assets/icons/arrowRight.png'),
                ],
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.whiteColor,
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                      )),
                  Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.whiteColor,
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                      )),
                  Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.whiteColor,
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                      )),
                  Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.whiteColor,
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                      )),
                  Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.whiteColor,
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
