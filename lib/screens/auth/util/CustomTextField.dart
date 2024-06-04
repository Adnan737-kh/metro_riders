
import 'package:flutter/material.dart';
import 'package:metro_riders/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.onEditingComplete,
    this.validator,
    this.keyboardType,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    this.suffixIcon,
    this.maxline = 1,
    this.onChange,
    this.maxLength,
    this.intialValue,
    this.focusnode,
    this.onFieldSubmitted,
    this.onTap,
    this.expands,
    this.hintMaxLines,
    this.isuffixIconPassword,
    this.prefixIconColor,
    this.borderRadius,
    this.fillColor,
    this.borderColor,
    this.hintColor,
  }) : super(key: key);

  final String? Function(String?)? validator;

  final void Function()? onEditingComplete;
  final String? intialValue;
  final String hintText;
  final String? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Function(String)? onChange;
  final int? maxline;
  final int? maxLength;
  final FocusNode? focusnode;
  final void Function(String)? onFieldSubmitted;
  final VoidCallback? onTap;
  final bool? expands;
  final int? hintMaxLines;
  final bool? isuffixIconPassword;
  final Color? prefixIconColor;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;
  final BorderRadius? borderRadius;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.isuffixIconPassword == true ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.25), // Replace with your desired shadow color
            offset: const Offset(0, 0), // X and Y offsets
            blurRadius: 10, // Blur radius
            spreadRadius: -6, // Spread
          ),
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        expands: widget.expands ?? false,
        onTap: widget.onTap,
        onFieldSubmitted: widget.onFieldSubmitted,
        onEditingComplete: widget.onEditingComplete,
        initialValue: widget.intialValue,
        maxLength: widget.maxLength,
        focusNode: widget.focusnode,
        maxLines: widget.maxline,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: Styles.bodyMedium.copyWith(
          color: Styles.blackColor,
        ),
        keyboardType: widget.keyboardType ?? TextInputType.text,
        cursorColor: Styles.blackColor,
        obscureText: obscureText,
        controller: widget.controller,
        onChanged: widget.onChange,
        validator: widget.validator,
        decoration: InputDecoration(
          helperMaxLines: widget.hintMaxLines ?? 1,
          contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          alignLabelWithHint: true,
          prefixIcon: widget.prefixIcon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Image.asset(
                    widget.prefixIcon!,
                    height: 20,
                    width: 20,
                    color: widget.prefixIconColor ?? Styles.blackColor,
                    fit: BoxFit.contain,
                  ),
                ),
          suffixIcon: widget.isuffixIconPassword == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Icon(
                      obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Styles.blackColor,
                      size: 20,
                    ),
                  ),
                )
              : widget.suffixIcon,
          counterText: '',
          fillColor: widget.fillColor ?? Styles.whiteColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: Styles.textStyleLight.copyWith(fontSize: 14,color: widget.hintColor ?? Styles.greyColor),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide: BorderSide(
              color: widget.borderColor ?? Styles.whiteColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide: BorderSide(
              color: widget.borderColor ?? Styles.whiteColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide: BorderSide(
              color: widget.borderColor ?? Styles.whiteColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
            borderSide: BorderSide(
              color: widget.borderColor ?? Styles.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
