import '../../data/models/stock_model.dart';

abstract class WatchlistState {}

class WatchlistLoading extends WatchlistState {}

class WatchlistLoaded extends WatchlistState {
  final List<StockModel> stocks;

  WatchlistLoaded({required this.stocks});
}