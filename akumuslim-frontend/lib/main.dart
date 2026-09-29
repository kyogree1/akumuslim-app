import 'package:flutter/material.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic App UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2EFE9),
        fontFamily: 'Sans-Serif',
      ),
      home: const HomePage(),
    );
  }
}