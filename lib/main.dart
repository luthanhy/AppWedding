import 'package:flutter/material.dart';
import './screen/FTUE/index.dart'; // Đảm bảo bạn import màn hình FTUE đúng

// Đây là widget chính của ứng dụng của bạn.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          IntroductionAnimationScreen(), // Gọi màn hình FTUE thay vì Scaffold mặc định
    );
  }
}

// Hàm main khởi tạo ứng dụng của bạn
void main() {
  runApp(MyApp()); // Gọi ứng dụng MyApp
}
