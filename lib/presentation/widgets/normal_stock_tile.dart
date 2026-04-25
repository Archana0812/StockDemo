import 'package:flutter/material.dart';
import '../../data/models/stock_model.dart';

class NormalStockTile extends StatelessWidget {
  final StockModel stock;

  const NormalStockTile({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = stock.change >= 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          /// LEFT SIDE
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stock.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                stock.exchange,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),

          const Spacer(),

          /// RIGHT SIDE
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "₹${stock.price.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isPositive ? Colors.green : Colors.red,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "${isPositive ? "+" : ""}${stock.change.toStringAsFixed(2)} "
                "(${stock.changePercent.toStringAsFixed(2)}%)",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}