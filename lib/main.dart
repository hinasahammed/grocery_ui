import 'package:flutter/material.dart';
import 'package:grocery_ui/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery ui',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffe76f51),
        ),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
