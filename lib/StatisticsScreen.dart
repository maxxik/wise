import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wise/Goalsettings.dart';
import 'package:wise/main.dart';
import 'package:wise/goal_item.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:wise/config.dart';
import 'package:wise/progressBar.dart';

const lP = 20.0;
const rP = 20.0;
const tP = 20.0;
const bP = 20.0;

class StatisticsScreen extends StatefulWidget {
  StatisticsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image add
            Image.asset(
              "assets/images/plot_cum.png",
              fit: BoxFit.fitWidth,
            ),

            Image.asset(
              "assets/images/pie.png",
              fit: BoxFit.fitWidth,
            ),
          ],
        ));
  }
}
