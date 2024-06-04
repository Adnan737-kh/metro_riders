import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height,
    this.leadingWidget,
    this.leading,
    this.title,
    this.centerTitle,
    this.action,
  });

  final double? height;
  final double? leadingWidget;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidget ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: action,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        double.infinity,
        height ?? 56,
      );
}
