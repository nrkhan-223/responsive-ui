import 'package:flutter/material.dart';
import 'package:responsive_design/consts/constants.dart';
import 'package:responsive_design/controllers/responsive.dart';
import 'package:responsive_design/screens/widget/Storage_info.dart';
import 'package:responsive_design/screens/widget/my_file.dart';
import 'package:responsive_design/screens/widget/dashboard_header_design.dart';
import 'home_page.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            header(scaffoldKey, context),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: myFile(context),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: storageInfo(context)),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            if (Responsive.isMobile(context)) storageInfo(context),
          ],
        ),
      ),
    ));
  }
}
