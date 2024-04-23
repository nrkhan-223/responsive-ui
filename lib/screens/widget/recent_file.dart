import 'package:flutter/material.dart';
import '../../consts/constants.dart';
import '../../models/RecentFile.dart';
import 'file_list.dart';

Widget recentFile() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Recent File"),
      SizedBox(
        width: double.infinity,
        child: DataTable(
            horizontalMargin: 0,
            columnSpacing: defaultPadding,
            columns: const [
              DataColumn(label: Text("  Name")),
              DataColumn(label: Text("  Date")),
              DataColumn(label: Text("  Size")),
            ],
            rows: List.generate(demoRecentFiles.length,
                (index) => fileList(fileInfo: demoRecentFiles[index]))),
      )
    ],
  );
}
