import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/styles.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({
    super.key,
    this.onTap,
    this.buttonOneTitle,
    this.buttonTwoTitle,
    this.width,
    this.height,
  });
  final VoidCallback? onTap;
  final String? buttonOneTitle;
  final String? buttonTwoTitle;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width:width ?? 156,
              height: double.infinity,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  buttonOneTitle ?? '',
                  style: const TextStyle(color: Styles.blackColor),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Container(
                width:width ?? 156 ,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    buttonTwoTitle ?? '',
                    style: const TextStyle(color: Styles.whiteColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
