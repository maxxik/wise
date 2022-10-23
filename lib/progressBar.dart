import 'package:flutter/material.dart';
import 'package:wise/config.dart';
import 'dart:async';

import 'package:percent_indicator/linear_percent_indicator.dart';

class progressBar extends StatefulWidget {
  progressBar({Key? key}) : super(key: key);

  @override
  _progressBarState createState() => _progressBarState();
}

class _progressBarState extends State<progressBar> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage / 100),
        duration: Duration(milliseconds: 600),
        builder: (context, value, child) {
          return Container(
              width: MediaQuery.of(context).size.width - 70,
              height: 50,
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [
                            value,
                            value,
                            goalOnTrack ? value : percentageGoal / 100,
                            goalOnTrack ? value : percentageGoal / 100
                          ],
                          colors: [
                            goalOnTrack ? Color(0xff30E036) : Color(0xffDC4545),
                            goalOnTrack
                                ? Color(0xff30E036)
                                : Color.fromARGB(255, 253, 174, 174),
                            goalOnTrack
                                ? Color(0xff30E036)
                                : Color.fromARGB(255, 253, 174, 174),
                            Grays1
                          ]).createShader(rect);
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 70,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Grays1,
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              ));
        });
  }
  //  return Container(
  //    margin: EdgeInsets.symmetric(vertical: 10),
  //    width: MediaQuery.of(context).size.width - 70,
  //    height: 40,
  //    child: ClipRRect(
  //      borderRadius: BorderRadius.all(Radius.circular(20)),
  //      child: LinearProgressIndicator(
  //        value: percentage / 100,
  //        valueColor: AlwaysStoppedAnimation<Color>(
  //            goalOnTrack ? Color(0xff30E036) : Color(0xffDC4545)),
  //        backgroundColor: Grays1,
  //      ),
  //    ),
  //  );

  //Container(
  //  child: Center(
  //    child: LinearPercentIndicator(
  //      width: MediaQuery.of(context).size.width * 0.8,
  //      animation: true,
  //      lineHeight: 40.0,
  //      animationDuration: 600,
  //      percent: percentage / 100,
  //      center: Text(
  //        percentage.toInt().toString() + "%",
  //        style: TextStyle(color: Colors.white),
  //      ),
  //      barRadius: const Radius.circular(16),
  //      progressColor: goalOnTrack ? Color(0xff30E036) : Color(0xffDC4545),
  //      backgroundColor: Colors.white,
  //    ),
  //  ),
  //);
}
