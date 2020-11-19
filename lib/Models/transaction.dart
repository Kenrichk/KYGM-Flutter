import 'package:flutter/foundation.dart';

class Transaction {
  final String serviceId;
  final String clientId;
  final String title;
  final double cost;
  final double price;
  final double revenue;
  final DateTime date;
  final String type;
  final String risk;
  final double duration;
  final String description;

  Transaction({
    @required this.risk,
    @required this.title,
    @required this.description,
    @required this.date,
    @required this.type,
    @required this.clientId,
    @required this.serviceId,
    @required this.cost,
    @required this.price,
    @required this.revenue,
    @required this.duration,
  });
}
