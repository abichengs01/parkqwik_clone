import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor:  Color(0xFF1A9E75)),
        useMaterial3: true,),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

