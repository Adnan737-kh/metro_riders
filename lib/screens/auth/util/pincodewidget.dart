import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metro_riders/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeWidget extends StatelessWidget {
  CustomPinCodeWidget({
    super.key,
    this.alignment,
    required this.context,
    this.controller,
    this.onChanged,
  });

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        keyboardType: TextInputType.number,
        textStyle: const TextStyle(color: Styles.blackColor),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        boxShadows:  [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.25), // Replace with your desired shadow color
            offset: Offset(2, 2), // X and Y offsets
            blurRadius: 0, // Blur radius
            spreadRadius: 0, // Spread
          ),
        ],
        pinTheme: PinTheme(
          fieldHeight: 80,
          fieldWidth: 64.0,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16),
          inactiveColor: Color(0xFF191B1F).withOpacity(0.20),
          inactiveFillColor: Colors.white,
          borderWidth: 1,
          activeColor: Colors.white,
          activeFillColor: Colors.white ,
          selectedColor: Colors.white,
          activeBorderWidth: 1,
          selectedFillColor: Colors.white,
          activeBoxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.25), // Replace with your desired shadow color
              offset: Offset(2, 2), // X and Y offsets
              blurRadius: 0, // Blur radius
              spreadRadius: 0, // Spread
            ),
          ] ,
          inactiveBorderWidth: 1,
          inActiveBoxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.25), // Replace with your desired shadow color
              offset: Offset(2, 2), // X and Y offsets
              blurRadius: 0, // Blur radius
              spreadRadius: 0, // Spread
            ),
          ]
          // activeBoxShadow: [
          //   const BoxShadow(
          //     color: Color(0xFFFFFFFF), // Replace with your desired shadow color
          //     offset: Offset(0, 0), // X and Y offsets
          //     blurRadius: 5, // Blur radius
          //     spreadRadius: 0, // Spread
          //   ),
          // ]
          // borderWidth: 1,
        ),
        onChanged: (value) {},
        length: 4,
      );
}
