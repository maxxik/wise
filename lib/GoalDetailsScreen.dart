import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wise/Goalsettings.dart';
import 'package:wise/config.dart';
import 'package:wise/goal_item.dart';
import 'package:wise/transaction_list.dart';
import 'package:wise/StatisticsScreen.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:wise/progressBar.dart';

const lP = 20.0;
const rP = 20.0;
const tP = 20.0;
const bP = 20.0;

class GoalDetailsScreen extends StatefulWidget {
  GoalDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<GoalDetailsScreen> createState() => _GoalDetailsScreenState();
}

class _GoalDetailsScreenState extends State<GoalDetailsScreen> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // Navigation buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(lP, tP, rP, 0),
                child:
                    // add a button to the left that says "back"
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    // add a button to the right that says "edit"
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Averta",
                              fontStyle: FontStyle.normal),
                        ))
                  ],
                ),
              ),

              // add a text widget that says "Savings"
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(35, 10, rP, 0),
                      // aligment left

                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Holiday in Croatia",
                          style: TextStyle(
                            fontFamily: 'Averta',
                            fontSize: 30,
                            color: BrandBlue1,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )),
                ],
              ),

              // Progress bar
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 35, 10),
                child: Column(
                  children: [
                    // Amount saved so far (text)
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          goalCurrent.toInt().toString() +
                              "/" +
                              goalTarget.toInt().toString() +
                              " " +
                              goalCcy,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Averta',
                            fontSize: 20,
                            color: WiseNavy1,
                          ),
                        ),
                      ),
                    ),

                    // Progress bar
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: progressBar(),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text(
                            "statistics",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'Averta',
                              fontSize: 20,
                              color: BrandBlue2,
                            ),
                          ),
                          onTap: () => setState(() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StatisticsScreen()))),
                        ),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          !goalOnTrack
                              ? "You are " +
                                  (goalTarget - goalCurrent)
                                      .toInt()
                                      .toString() +
                                  " " +
                                  goalCcy +
                                  " away from your goal."
                              : "You are on track!",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Averta',
                            fontSize: 14,
                            color: WiseNavy1,
                          ),
                        )),

                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                        child: Text(
                          !goalOnTrack
                              ? "You are " +
                                  (goalOnTrackAmount - goalCurrent)
                                      .toInt()
                                      .toString() +
                                  " " +
                                  goalCcy +
                                  " away from being on track."
                              : "You are ahead of schedule by " +
                                  (-goalOnTrackAmount + goalCurrent)
                                      .toInt()
                                      .toString() +
                                  " " +
                                  goalCcy +
                                  ".",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Averta',
                            fontSize: 14,
                            color: WiseNavy1,
                          ),
                        ))
                  ],
                ),
              ),

              // Saving contributions
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Column(
                  children: [
                    // Title
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          "Saving contributions",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Averta',
                            fontSize: 20,
                            color: WiseNavy1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // List of transactions
              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: transactionList(notifyParent: () {})),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/navigation_tab_srcshot.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => GoalSettings(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
