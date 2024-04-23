import 'package:flutter/cupertino.dart';
import 'package:responsive_design/screens/widget/paichart.dart';
import 'package:responsive_design/screens/widget/storsge_card_info.dart';

import '../../consts/constants.dart';

Widget storageInfo(context) {
  return Container(
    padding: const EdgeInsets.all(defaultPadding),
    decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Storage Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
        PaiChart(context),
        const SizedBox(
          height: 15,
        ),
        storageCardInfo(context,
            title: "Document Files",
            svgSrc: "assets/icons/Documents.svg",
            numberoffile: '124',
            sizeoffile: '2.5'),
        storageCardInfo(context,
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
            numberoffile: '124',
            sizeoffile: '15'),
        storageCardInfo(context,
            title: "Other Files",
            svgSrc: "assets/icons/folder.svg",
            numberoffile: '124',
            sizeoffile: '2'),
        storageCardInfo(context,
            title: "Unknown Files",
            svgSrc: "assets/icons/unknown.svg",
            numberoffile: '124',
            sizeoffile: '3'),
        storageCardInfo(context,
            title: "System Files",
            svgSrc: "assets/icons/media_file.svg",
            numberoffile: '124',
            sizeoffile: '5'),
      ],
    ),
  );
}
