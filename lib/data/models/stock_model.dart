import 'package:equatable/equatable.dart';

class StockModel extends Equatable {
  final String name;
  final String exchange;
  final double price;
  final double change;
  final double changePercent;

  const StockModel({
    required this.name,
    required this.exchange,
    required this.price,
    required this.change,
    required this.changePercent,
  });

  @override
  List<Object> get props =>
      [name, exchange, price, change, changePercent];
}