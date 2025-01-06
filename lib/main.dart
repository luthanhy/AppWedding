import 'package:appwedding/pages/WeddingPage.dart';
import 'package:flutter/material.dart';
import 'package:appwedding/pages/ScreenMain.dart';

void main() {
  int config = 1;
  if (config == 1) {
    runApp(MyApp());
  } else {
    runApp(Weddingpage());
  }
}
