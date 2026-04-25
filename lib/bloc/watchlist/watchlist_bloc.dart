import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_demo/utils/dummy_data.dart';
import 'watchlist_event.dart';
import 'watchlist_state.dart';
import '../../data/models/stock_model.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(WatchlistLoading()) {
    on<LoadWatchlist>(_onLoad);
    on<ReorderStocks>(_onReorder);
    on<DeleteStock>(_onDelete);
  }

  void _onLoad(
    LoadWatchlist event,
    Emitter<WatchlistState> emit,
  ) {
    emit(WatchlistLoaded(stocks: List.from(initialWatchlist)));
  }

  void _onReorder(
    ReorderStocks event,
    Emitter<WatchlistState> emit,
  ) {
    if (state is WatchlistLoaded) {
      final List<StockModel> updated =
          List.from((state as WatchlistLoaded).stocks);

      final item = updated.removeAt(event.oldIndex);
      final newIndex = event.newIndex > event.oldIndex
          ? event.newIndex - 1
          : event.newIndex;

      updated.insert(newIndex, item);

      emit(WatchlistLoaded(stocks: updated));
    }
  }

  void _onDelete(
    DeleteStock event,
    Emitter<WatchlistState> emit,
  ) {
    if (state is WatchlistLoaded) {
      final updated =
          List<StockModel>.from((state as WatchlistLoaded).stocks)
            ..removeAt(event.index);

      emit(WatchlistLoaded(stocks: updated));
    }
  }
}