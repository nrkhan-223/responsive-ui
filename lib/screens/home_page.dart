import 'package:flutter/material.dart';
import 'package:responsive_design/controllers/responsive.dart';
import 'package:responsive_design/screens/dashboard_screen.dart';
import 'package:responsive_design/screens/widget/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(context),
      key: scaffoldKey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: SideMenu(context)),
          const Expanded(
            flex: 5,
            child: DashboardScreen(),
          )
        ],
      )),
    );
  }
}
