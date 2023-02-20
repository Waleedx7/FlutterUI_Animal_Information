import 'package:animals_flutter/pages/home_page.dart';
import 'package:animals_flutter/pages/xo_game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: XOPage());
  }
}
