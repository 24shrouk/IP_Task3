import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/providers/favorite_provider.dart';
import 'package:task3/views/home_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
    ],
    child: ShoppingListApp(),
  ));
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
