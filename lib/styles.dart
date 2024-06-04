import 'package:flutter/cupertino.dart';

class Styles {
  static const textStyleBold = TextStyle(
    fontFamily: 'Montserrat',
    color: Styles.blackColor,
    fontWeight: FontWeight.w700,
    fontSize: 28,
  );

  static const textStyleLargeBlack = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Styles.blackColor,
    fontSize: 16,
  );
  static const textStyleLight = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Styles.greyTextColor,
    fontSize: 16,
  );

  static const cardTitleStyleBlack = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Styles.blackColor,
    fontSize: 14,
  );

  static const cardTitleStyleGrey = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Styles.greyTextColor,
    fontSize: 14,
  );

  static const bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: Styles.greyTextColor,
  );

  static const labelStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Styles.greyTextColor,
  );
  static const labelStyleBlack = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Styles.blackColor,
  );

  static const labelStyleGrey = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Styles.greyTextColor,
  );



  static const labelLargeStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: Styles.blackColor,
  );

  static const labelMediumStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Styles.blackColor,
  );


  static  BoxDecoration cardStyle16 = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Styles.greyColor,
  );


  static  BoxDecoration cardStyle24 = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Styles.greyColor,
  );

  static const blackColor = Color(0xFF191B1F);
  static const appThemeColor = Color(0xFFF0F0F0);
  static const lightBlackColor = Color(0xFF191B1F9);
  static const Color greyTextColor = Color(0xFF767676);
  static const Color greyColor = Color(0xFFF0F0F0);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color appBarIconColor = Color(0xFF191B1F);
  static const Color arrowColor = Color(0xFF231F20);
}
