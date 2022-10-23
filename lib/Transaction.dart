import 'dart:ffi';
//Ezt importolni kell majd a mainbe:
//import 'package:flutter/services.dart' as rootBundle;

class PurchaseData {
  int? id;
  String? recipient;
  String? category;
  String? time;
  double? price;
  double? price_eur;
  String? currency;

  PurchaseData({
    this.id,
    this.recipient,
    this.category,
    this.time,
    this.price,
    this.price_eur,
    this.currency,
  });

  PurchaseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    recipient = json['recipient'];
    category = json['description'];
    time = json['date'];
    price = json['price'].toDouble();
    price_eur = json['price_in_eur'].toDouble();
    currency = json['currency'];
  }
  // function to get the category id of instance

  int getCategoryID() {
    if (this.category.toString() == "Groceries") {
      return 0;
    } else if (this.category.toString() == "Transportation") {
      return 1;
    } else if (this.category.toString() == "Utilities") {
      return 2;
    } else if (this.category.toString() == "Recreation") {
      return 3;
    } else if (this.category.toString() == "Entertainment") {
      return 4;
    } else {
      return -1;
    }
  }
}
