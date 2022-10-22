import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class checkbox extends StatelessWidget {
  checkbox({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 2.0, start: 0.0),
          Pin(size: 2.0, start: 4.0),
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 22.0, start: 0.0),
          Pin(start: 4.0, end: 4.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: const Color(0xffa8aaac)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 22.0, start: 0.0),
          Pin(start: 4.0, end: 4.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: const Color(0xff37517e)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(39.0, 0.0, 0.0, -3.0),
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 33.0, middle: 0.5),
                child: Text(
                  'Groceries',
                  style: TextStyle(
                    fontFamily: 'Averta Demo',
                    fontSize: 25,
                    color: const Color(0xff2e4369),
                    letterSpacing: -0.25,
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 33.0, middle: 0.5),
                child: Text(
                  'Groceries',
                  style: TextStyle(
                    fontFamily: 'Averta Demo',
                    fontSize: 25,
                    color: Colors.transparent,
                    letterSpacing: -0.25,
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromPins(
          Pin(size: 25.8, start: 4.0),
          Pin(size: 19.2, start: 3.8),
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(startFraction: -0.2296, endFraction: 1.0355),
                Pin(startFraction: 0.3232, endFraction: 0.4165),
                child: Transform.rotate(
                  angle: -0.5236,
                  child: Container(
                    color: const Color(0xff00a4df),
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(startFraction: 0.0, endFraction: 0.0),
                Pin(startFraction: 0.0, endFraction: 0.0),
                child: SvgPicture.string(
                  _svg_hfxdp,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_hfxdp =
    '<svg viewBox="39.0 221.8 25.8 19.2" ><path transform="translate(39.0, 217.21)" d="M 8.74846363067627 23.40779113769531 L 0.3772147297859192 15.03654289245605 C -0.1257142424583435 14.53361415863037 -0.1257142424583435 13.71817207336426 0.3772147297859192 13.2151927947998 L 2.198514938354492 11.39384174346924 C 2.701444149017334 10.89086246490479 3.516936540603638 10.89086246490479 4.019865036010742 11.39384174346924 L 9.659138679504395 17.0330638885498 L 21.73783874511719 4.95441722869873 C 22.24076461791992 4.451488494873047 23.0562572479248 4.451488494873047 23.55918884277344 4.95441722869873 L 25.38048934936523 6.775768280029297 C 25.8834171295166 7.27869701385498 25.8834171295166 8.094139099121094 25.38048934936523 8.597119331359863 L 10.56981468200684 23.40784072875977 C 10.06683444976807 23.91076850891113 9.251392364501953 23.91076850891113 8.74846363067627 23.40779113769531 Z" fill="#00a4df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
