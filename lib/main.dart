import 'package:flutter/material.dart';
import 'package:social_media/ui/calculator.dart';
// import 'package:social_media/ui/curved_bottomNavigation.dart';
// import 'package:social_media/ui/dicegame.dart';
import 'package:social_media/ui/sign_up.dart';

// import 'package:social_media/ui/home_screen.dart';
// import 'package:social_media/ui/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CalculatorScreen(),
    );
  }
}
