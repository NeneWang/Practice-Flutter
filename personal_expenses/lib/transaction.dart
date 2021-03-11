import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  DateTime date;
  double amount;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.date,
      @required this.amount});
}
