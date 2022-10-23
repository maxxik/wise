import 'package:flutter/material.dart';
import 'package:wise/config.dart';
import 'package:wise/GoalDetailsScreen.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:wise/Transaction.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

class transactionList extends StatefulWidget {
  final Function() notifyParent;

  transactionList({Key? key, required this.notifyParent}) : super(key: key);

  @override
  State<transactionList> createState() => _transactionListState();
}

Future<List<PurchaseData>> ReadJsonData() async {
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/data/data.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => PurchaseData.fromJson(e)).toList();
}

class _transactionListState extends State<transactionList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<PurchaseData>;
          double sum = 0;
          // zero out categoryAmount
          for (int i = 0; i < 5; i++) {
            categoryAmount[i] = 0;
          }

          for (var i = 0; i < items.length; i++) {
            //pie chart
            categoryAmount[items[i].getCategoryID()] +=
                items[i].price_eur! * categoryContrib[items[i].getCategoryID()];
            sum +=
                items[i].price_eur! * categoryContrib[items[i].getCategoryID()];
          }

          goalCurrent = sum;
          goalOnTrack = goalCurrent >= goalOnTrackAmount;
          percentage = (goalCurrent / goalTarget) * 100;

          widget.notifyParent();

          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  color: WiseNavy1,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: new IconButton(
                            icon: categoryIcons[items[index].getCategoryID()],
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 5),
                                child: Text(
                                  items[index].recipient.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 5),
                                child: Text(
                                  items[index].category.toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 5),
                                child: Text(
                                  items[index].time.toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        Container(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "+" +
                                      (items[index].price_eur! *
                                              categoryContrib[
                                                  items[index].getCategoryID()])
                                          .toStringAsFixed(2) +
                                      goalCcy,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: WiseNavy1,
                                  ),
                                ))),
                      ],
                    ),
                  ),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
