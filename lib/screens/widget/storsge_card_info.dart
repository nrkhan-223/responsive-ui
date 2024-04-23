import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../consts/constants.dart';

Widget storageCardInfo(context,
    {required String title, required String svgSrc, required String numberoffile, required String sizeoffile}) {
  return Container(
    margin: const EdgeInsets.only(top: defaultPadding),
    padding: const EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
      borderRadius: BorderRadius.circular(defaultPadding),
    ),
    child: Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(svgSrc),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
               "$numberoffile Files",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white70,),
              ),
            ],
          ),
        )),
        Text("$sizeoffile GB")
      ],
    ),
  );
}
