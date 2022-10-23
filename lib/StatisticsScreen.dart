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
            // Navigation buttons
            Padding(
              padding: const EdgeInsets.fromLTRB(lP, tP, rP, 0),
              child:
                  // add a button to the left that says "back"
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // set padding to 10

                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    icon: SvgPicture.string(
                      '<svg viewBox="32.0 27.1 23.0 22.4" ><path transform="translate(31.96, 24.48)" d="M 13.1943244934082 23.52655029296875 L 12.05671215057373 24.66416168212891 C 11.5750207901001 25.14585494995117 10.79611492156982 25.14585494995117 10.31954765319824 24.66416168212891 L 0.3577531576156616 14.70749378204346 C -0.1239385381340981 14.22580146789551 -0.1239385381340981 13.44689750671387 0.3577531576156616 12.97032833099365 L 10.31954765319824 3.00853443145752 C 10.80123901367188 2.526842594146729 11.58014488220215 2.526842594146729 12.05671215057373 3.00853443145752 L 13.1943244934082 4.146146774291992 C 13.6811408996582 4.632962703704834 13.67089176177979 5.427241802215576 13.17382717132568 5.903809070587158 L 6.998950004577637 11.78659725189209 L 21.72641754150391 11.78659725189209 C 22.407958984375 11.78659725189209 22.95626831054688 12.33490657806396 22.95626831054688 13.01644897460938 L 22.95626831054688 14.65625 C 22.95626831054688 15.33779239654541 22.407958984375 15.88610172271729 21.72641754150391 15.88610172271729 L 6.998950004577637 15.88610172271729 L 13.17382717132568 21.76889038085938 C 13.67601585388184 22.24545669555664 13.68626499176025 23.03973388671875 13.1943244934082 23.52655029296875 Z" fill="#00b9ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                      height: 23,
                    ),
                    onPressed: () {
                      // go back to the previous screen
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
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
