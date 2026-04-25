abstract class WatchlistEvent {}

class LoadWatchlist extends WatchlistEvent {}

class ReorderStocks extends WatchlistEvent {
  final int oldIndex;
  final int newIndex;

  ReorderStocks(this.oldIndex, this.newIndex);
}

class DeleteStock extends WatchlistEvent {
  final int index;

  DeleteStock(this.index);
}