import 'package:flutter/material.dart';

import '../styles.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? backGroundColor;
  final Color? titleColor;
  final Color? borderColor;
  final bool? isLoading;
  const SubmitButton({
    super.key,
    required this.onTap,
    required this.title,
    this.backGroundColor,
    this.titleColor,
    this.borderColor,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isLoading == true ? null : onTap,
      elevation: 0,
      color: backGroundColor ?? Styles.blackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: borderColor ?? Styles.blackColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            title,
            style: Styles.textStyleLight.copyWith(
              color: titleColor ?? Styles.whiteColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
