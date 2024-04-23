import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_design/models/MyFiles.dart';
import '../../consts/constants.dart';

Widget fileInfoCard({required CloudStorageInfo info}) {
  return Container(
    padding: const EdgeInsets.all(defaultPadding * 0.75),
    decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(defaultPadding * 0.75),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: info.color.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: SvgPicture.asset(
                info.svgSrc,
                color: info.color,
              ),
            ),
            const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 19,
            )
          ],
        ),
        Text(
          info.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 5,
              decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  width: constraints.maxWidth * (info.percentage / 100),
                  height: 5,
                  decoration: BoxDecoration(
                      color: info.color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${info.numOfFiels} Files",
                style: const TextStyle(color: Colors.white70,fontSize: 13)),
            Text(info.totalStorage,
                style: const TextStyle(color: Colors.white70,fontSize: 13)),
          ],
        )
      ],
    ),
  );
}
