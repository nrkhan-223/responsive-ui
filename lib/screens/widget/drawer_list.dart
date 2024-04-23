import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget drawerList(ontap, title, icons,context) {
  return ListTile(
    onTap: ontap,
    horizontalTitleGap: 0.0,
    leading:
    SvgPicture.asset(
      icons,
      color: Colors.white54,
      height: 16,
    ),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white54),
    ),
  );
}
