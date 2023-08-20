import 'package:flutter/material.dart';
import 'package:storeapp/Screens/UpdateProductsPage.dart';
import 'package:storeapp/Screens/homePage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductsPage.id: (context) => UpdateProductsPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
