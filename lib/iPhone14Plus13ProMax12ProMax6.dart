import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhone14Plus13ProMax12ProMax6 extends StatelessWidget {
  iPhone14Plus13ProMax12ProMax6({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xffffffff),
          ),
          Pinned.fromPins(
            Pin(size: 19.9, start: 35.0),
            Pin(size: 18.6, start: 29.0),
            child: SvgPicture.string(
              _svg_pzaz2,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.9, start: 35.0),
            Pin(size: 18.6, start: 29.0),
            child: SvgPicture.string(
              _svg_rpp0pa,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 72.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 298.0, start: 33.0),
            Pin(size: 80.0, start: 82.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Averta ☞',
                  fontSize: 30,
                  color: const Color(0xff37517e),
                  letterSpacing: -0.3,
                ),
                children: [
                  TextSpan(
                    text: 'Holiday - Croatia ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'Progression',
                    style: TextStyle(
                      fontFamily: 'Averta Demo',
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 44.0),
            Pin(size: 221.0, middle: 0.2823),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, start: 36.5),
                  Pin(size: 143.0, middle: 0.4295),
                  child: SvgPicture.string(
                    _svg_vm8uie,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 19.5, end: 26.5),
                  Pin(size: 2.0, middle: 0.7146),
                  child: SvgPicture.string(
                    _svg_itiem4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 237.0, start: 37.5),
                  Pin(size: 96.6, middle: 0.4138),
                  child: SvgPicture.string(
                    _svg_j6ix,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 76.0, end: 75.0),
            Pin(size: 277.0, middle: 0.7504),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff5391d8),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_pzaz2 =
    '<svg viewBox="35.0 29.0 19.9 18.6" ><path transform="translate(35.0, 29.0)" d="M 0 0 L 19.91960525512695 18.63446998596191" fill="none" stroke="#008ec0" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rpp0pa =
    '<svg viewBox="35.0 29.0 19.9 18.6" ><path transform="translate(35.0, 29.0)" d="M 19.91960525512695 0 L 0 18.63446998596191" fill="none" stroke="#008ec0" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vm8uie =
    '<svg viewBox="71.5 214.5 1.0 143.0" ><path transform="translate(71.5, 214.5)" d="M 1 0 L 0 143" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_itiem4 =
    '<svg viewBox="54.5 337.5 294.0 2.0" ><path transform="translate(54.5, 337.5)" d="M 0 2 L 294 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j6ix =
    '<svg viewBox="72.5 232.5 237.0 96.6" ><path transform="translate(-1216.0, 216.0)" d="M 1288.5 113.0660629272461 L 1325.28759765625 68.31074523925781 L 1360.620727539062 105.9994506835938 L 1401.8427734375 22.37765693664551 L 1471.331298828125 68.31074523925781 L 1525.508666992188 16.48879814147949" fill="none" stroke="#5a8fe8" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
