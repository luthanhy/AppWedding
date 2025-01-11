import 'package:flutter/material.dart';
import './screen/FTUE/index.dart'; // Kiểm tra đường dẫn import
import './screen/Login/index.dart'; // Kiểm tra đường dẫn import
import './screen/HomePage/index.dart'; // Kiểm tra đường dẫn import
import './screen/HomePage/bookmark/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookmarkScreen(), // Sử dụng FTUE nếu cần
    );
  }
}

void main() {
  runApp(MyApp());
}
