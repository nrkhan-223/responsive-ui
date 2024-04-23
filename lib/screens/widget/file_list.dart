import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_design/consts/constants.dart';
import 'package:responsive_design/models/RecentFile.dart';

DataRow fileList({required RecentFile fileInfo}) {
  return DataRow(
    onLongPress: (){},
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title),
            )
          ],
        ),
      ),
       DataCell(Text(fileInfo.date)),
       DataCell(Text(fileInfo.size)),
    ],
  );
}
