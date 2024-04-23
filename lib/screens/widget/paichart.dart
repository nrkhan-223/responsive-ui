import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../consts/constants.dart';

Widget PaiChart(context){
  return SizedBox(
    height: 200,
    child: Stack(
        children:[
          PieChart(
            PieChartData(
                centerSpaceRadius: 68,
                sectionsSpace: 0,
                startDegreeOffset: -90,
                sections: [
                  PieChartSectionData(
                      color: primaryColor,
                      value: 25,
                      showTitle: false,
                      radius: 25),
                  PieChartSectionData(
                      color: Colors.greenAccent,
                      value: 20,
                      showTitle: false,
                      radius: 22),
                  PieChartSectionData(
                      color: Colors.yellow.shade600,
                      value: 13,
                      showTitle: false,
                      radius: 19),
                  PieChartSectionData(
                      color: Colors.redAccent,
                      value: 16,
                      showTitle: false,
                      radius: 16),
                  PieChartSectionData(
                      color: Colors.yellow.shade200,
                      value: 20,
                      showTitle: false,
                      radius: 13),
                ]),
          ),
          Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "32.5",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                    !.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1.2),
                  ),
                  const Text("of 128GB")
                ],
              )),

        ]

    ),
  );
}