import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../consts/constants.dart';
import '../../controllers/responsive.dart';

Widget header(GlobalKey<ScaffoldState> key,context) {
  return Row(
    children: [
      if (!Responsive.isDesktop(context))
        GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      Text('Dashboard',
          style: TextStyle(
              color: Colors.white,
              fontSize: !Responsive.isDesktop(context) ? 18 : 22,
              fontWeight: FontWeight.bold)),
      if (!Responsive.isMobile(context))
        const Spacer(
          flex: 1,
        ),
      Expanded(
          flex: 1,
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: secondaryColor,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                hintText: "Search",
                hintStyle: const TextStyle(color: Colors.white38),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: SvgPicture.asset('assets/icons/Search.svg')),
                )),
          )),
      Container(
        width: 200,
        margin: const EdgeInsets.only(left: defaultPadding),
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(11)),
            border: Border.all(color: Colors.white10)),
        child: Row(
          children: [
            Image.asset(
              'assets/images/profile_pic.png',
              height: 36,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text('Demo User'),
            ),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      )
    ],
  );
}
