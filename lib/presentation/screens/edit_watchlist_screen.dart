import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/watchlist/watchlist_bloc.dart';
import '../../bloc/watchlist/watchlist_event.dart';
import '../../bloc/watchlist/watchlist_state.dart';
import '../widgets/edit_stock_tile.dart';

class EditWatchlistScreen extends StatelessWidget {
  const EditWatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Watchlist 1")),
      body: BlocBuilder<WatchlistBloc, WatchlistState>(
        builder: (context, state) {
          if (state is WatchlistLoaded) {
            return Column(
              children: [
                Expanded(
                  child: ReorderableListView.builder(
                    itemCount: state.stocks.length,
                    onReorder: (oldIndex, newIndex) {
                      context.read<WatchlistBloc>().add(
                        ReorderStocks(oldIndex, newIndex),
                      );
                    },
                    itemBuilder: (context, index) {
                      return EditStockTile(
                        key: ValueKey(state.stocks[index].name),
                        stock: state.stocks[index],
                        index: index,
                        onDelete: () {
                          context.read<WatchlistBloc>().add(DeleteStock(index));
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Save Watchlist",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
