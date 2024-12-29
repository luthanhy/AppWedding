import 'package:appwedding/pages/Home.dart';
import 'package:appwedding/pages/WeddingPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeddingApp(),
    );
  }
}

