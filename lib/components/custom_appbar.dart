import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  const CustomAppBar(
      {super.key,
      this.title,
      this.backgroundColor,
      this.centerTitle,
      this.actions,
      this.leading});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      title: Text(title ?? "Hello World"),
      elevation: 0,
      actions: actions,
      leading: leading,
    );
  }
}
