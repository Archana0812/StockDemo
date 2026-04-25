import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_demo/bloc/watchlist/watchlist_bloc.dart';
import 'package:stock_demo/bloc/watchlist/watchlist_event.dart';
import 'package:stock_demo/presentation/screens/watchlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WatchlistBloc()..add(LoadWatchlist()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WatchlistScreen(),
      ),
    );
  }
}