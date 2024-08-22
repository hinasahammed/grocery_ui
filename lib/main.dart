import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_ui/view/home/home_view.dart';
import 'package:grocery_ui/viewmodel/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewmodel(),
      child: MaterialApp(
        title: 'Grocery ui',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffe76f51),
          ),
          useMaterial3: true,
          textTheme: GoogleFonts.robotoMonoTextTheme(),
        ),
        home: const HomeView(),
      ),
    );
  }
}
