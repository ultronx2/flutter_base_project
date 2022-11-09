import 'package:flutter/material.dart';
import 'package:project_name/app/res/app_size_config.dart';
import 'package:project_name/app/res/font_family.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, required this.title, this.leading, this.actions})
      : super(key: key);
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: SizeConfig.font_16,
          fontWeight: FontStyles.medium),
      leading: leading,
      surfaceTintColor: Colors.white,
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.size_50);
}
