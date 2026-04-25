import 'package:flutter/material.dart';
import '../../data/models/stock_model.dart';

class EditStockTile extends StatelessWidget {
  final StockModel stock;
  final int index;
  final VoidCallback onDelete;

  const EditStockTile({
    super.key,
    required this.stock,
    required this.index,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: key,
      leading: ReorderableDragStartListener(
        index: index,
        child: const Icon(Icons.drag_handle),
      ),
      title: Text(stock.name),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}