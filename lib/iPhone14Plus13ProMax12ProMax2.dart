import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './iPhone14Plus13ProMax12ProMax1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhone14Plus13ProMax12ProMax2 extends StatelessWidget {
  iPhone14Plus13ProMax12ProMax2({
    Key key,
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
            Pin(size: 298.0, start: 35.0),
            Pin(size: 53.0, start: 71.0),
            child: Text(
              'Savings',
              style: TextStyle(
                fontFamily: 'Averta ☞',
                fontSize: 40,
                color: const Color(0xff37517e),
                letterSpacing: -0.4,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 47.0),
            Pin(size: 214.0, start: 129.0),
            child: Container(
              color: const Color(0xffffffff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 53.0, middle: 0.2417),
            child: Text(
              'MALAC',
              style: TextStyle(
                fontFamily: 'Averta ☞',
                fontSize: 40,
                color: const Color(0xff37517e),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 38.0),
            Pin(size: 114.0, middle: 0.4803),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffa8aaac),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 258.0, start: 53.0),
            Pin(size: 37.0, middle: 0.4466),
            child: Text(
              'Holiday - Croatia',
              style: TextStyle(
                fontFamily: 'Averta ☞',
                fontSize: 28,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, end: 49.0),
            Pin(size: 26.0, middle: 0.4856),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.2,
                  pageBuilder: () => iPhone14Plus13ProMax12ProMax1(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff0f0f0),
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.66, -0.029),
            child: Container(
              width: 22.0,
              height: 22.0,
              decoration: BoxDecoration(
                color: const Color(0xffb9b9b9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.172),
            child: SizedBox(
              width: 180.0,
              height: 27.0,
              child: Text(
                '+ add goals',
                style: TextStyle(
                  fontFamily: 'Averta Demo',
                  fontSize: 20,
                  color: const Color(0xff37517e),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 91.0, end: 8.0),
            Pin(size: 24.0, start: 29.0),
            child: Text(
              'Edit',
              style: TextStyle(
                fontFamily: 'Averta Demo',
                fontSize: 18,
                color: const Color(0xff00b9ff),
              ),
              textAlign: TextAlign.center,
            ),
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
            Pin(size: 105.0, start: 59.0),
            Pin(size: 33.0, middle: 0.5028),
            child: Text(
              '5000 €',
              style: TextStyle(
                fontFamily: 'Averta ☞',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.303, 0.006),
            child: SizedBox(
              width: 72.0,
              height: 31.0,
              child: Text(
                '36%',
                style: TextStyle(
                  fontFamily: 'Averta Demo',
                  fontSize: 23,
                  color: const Color(0xffffffff),
                ),
              ),
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
        ],
      ),
    );
  }
}

const String _svg_pzaz2 =
    '<svg viewBox="35.0 29.0 19.9 18.6" ><path transform="translate(35.0, 29.0)" d="M 0 0 L 19.91960525512695 18.63446998596191" fill="none" stroke="#008ec0" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rpp0pa =
    '<svg viewBox="35.0 29.0 19.9 18.6" ><path transform="translate(35.0, 29.0)" d="M 19.91960525512695 0 L 0 18.63446998596191" fill="none" stroke="#008ec0" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
