import 'package:flutter/material.dart';
import '../../../Strings.dart';
import '../../../styles.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  final String iconPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 327,
        decoration: Styles.cardStyle16.copyWith(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.whiteColor,
                ),
                child: Image(image: AssetImage(iconPath))),
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: Styles.cardTitleStyleBlack
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Image(
              image: AssetImage(
                AppIcons.arrowRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
