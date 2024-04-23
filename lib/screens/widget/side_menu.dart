import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_design/consts/constants.dart';

import 'drawer_list.dart';

Widget SideMenu(context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          drawerList(() {
            log("Dashboard");
          }, "Dashboard", "assets/icons/menu_dashbord.svg", context),
          drawerList(() {
            log("Transaction");
          }, "Transaction", "assets/icons/menu_tran.svg", context),
          drawerList(() {
            log("Task");
          }, "Task", "assets/icons/menu_task.svg", context),
          drawerList(() {
            log("Document");
          }, "Document", "assets/icons/menu_doc.svg", context),
          drawerList(() {
            log("Store");
          }, "Store", "assets/icons/menu_store.svg", context),
          drawerList(() {
            log("Notification");
          }, "Notification", "assets/icons/menu_notification.svg", context),
          drawerList(() {
            log("Profile");
          }, "Profile", "assets/icons/menu_profile.svg", context),
          drawerList(() {
            log("Settings");
          }, "Settings", "assets/icons/menu_setting.svg", context),
        ],
      ),
    ),
  );
}
