import 'package:flutter/material.dart';
import 'package:wise/GoalDetailsScreen.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:wise/config.dart';

class GoalItem extends StatefulWidget {
  final Function() notifyParent;

  GoalItem(
      {Key? key,
      required this.notifyParent,
      required bool this.editStatus,
      required double this.percentage,
      required double this.goalAmount})
      : super(key: key);

  final bool editStatus;
  double percentage = 36;
  double goalAmount = 5000;
  @override
  State<GoalItem> createState() => _GoalItemState();
}

class _GoalItemState extends State<GoalItem> {
  bool goalStatus = true;

  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Row(
        children: [
          // add icon widget
          Visibility(
            visible: widget.editStatus,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(''),
                      content: const Text(
                          "This feature is not yet implemented in this prototype."),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),

          InkWell(
            onTap: () {
              // navigate to GoalDetailsScreen
              if (!widget.editStatus && goalStatus) {
                Navigator.of(context).push(_createRoute());
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(
                //        builder: (context) => GoalDetailsScreen()));
              }
            },
            child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: widget.editStatus
                    ? MediaQuery.of(context).size.width - 110
                    : MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: goalStatus ? BrandBlue3 : Grays2,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(14, 0, 14, 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                              child: Text(
                                "Holiday in Croatia",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Averta',
                                  fontSize: 26,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Text(
                                      widget.goalAmount.round().toString() +
                                          " €",
                                      style: TextStyle(
                                        fontFamily: 'Averta',
                                        fontSize: 23,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(width: 30),
                                  Container(
                                    child: Text(
                                      widget.percentage.round().toString() +
                                          "%",
                                      style: TextStyle(
                                        fontFamily: 'Averta',
                                        fontSize: 23,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        //toggle switch
                        Visibility(
                          visible: !widget.editStatus,
                          child: FlutterSwitch(
                            width: 50,
                            height: 30,
                            valueFontSize: 25.0,
                            toggleSize: 25,
                            value: goalStatus,
                            borderRadius: 30.0,
                            padding: 4.0,
                            showOnOff: false,
                            activeToggleColor: Color(0xff30E036),
                            inactiveToggleColor: Color(0xffA8AAAC),
                            activeColor: Color(0xffffffff),
                            inactiveColor: Color(0xffffffff),
                            onToggle: (val) {
                              setState(() {
                                goalStatus = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        GoalDetailsScreen(),
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
