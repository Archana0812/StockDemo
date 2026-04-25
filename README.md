📈 Stock Watchlist (Flutter + BLoC)

A simple Stock Watchlist Flutter application built using the BLoC (Business Logic Component) pattern.
The app allows users to view, reorder, and delete stocks from a watchlist using a clean and scalable architecture.

✨ Features

📃 View stock watchlist
✏️ Edit watchlist using long press
🔀 Reorder stocks using drag & drop
❌ Delete stocks from the watchlist
🧠 State management using flutter_bloc
🧱 Clean folder structure (Presentation / BLoC / Data)

🛠 Tech Stack

Flutter
Dart
flutter_bloc
equatable

📁 Folder Structure

```text
lib/
├── bloc/
│   └── watchlist/
│       ├── watchlist_bloc.dart
│       ├── watchlist_event.dart
│       └── watchlist_state.dart
├── data/
│   └── models/
│       └── stock_model.dart
├── presentation/
│   ├── screens/
│   │   ├── watchlist_screen.dart
│   │   └── edit_watchlist_screen.dart
│   └── widgets/
│       ├── normal_stock_tile.dart
│       └── edit_stock_tile.dart
├── utils/
│   └── dummy_data.dart
└── main.dart
```

🧠 Architecture Overview (BLoC)

🔹 Events

LoadWatchlist – Load initial data
ReorderStocks – Handle drag & drop reordering
DeleteStock – Remove a stock

🔹 States

WatchlistLoading
WatchlistLoaded

🔹 BLoC Responsibilities

Maintain stock list state
Handle reorder logic
Handle delete logic
Emit updated UI states

📱 Screens

1️⃣ Watchlist Screen

Displays all stocks
Long press on any item to enter Edit mode

2️⃣ Edit Watchlist Screen

Reorder stocks using drag handle
Delete stocks
Save button to return to watchlist

🧩 Stock Model

Uses Equatable for efficient state comparison
Keeps UI rebuilds optimized

🧪 Useful Packages

flutter_bloc: ^8.1.3
equatable: ^2.0.5
