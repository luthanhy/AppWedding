import 'package:flutter/material.dart';
import '../compoments/my_card.dart';
import 'carousel.dart'; // Đảm bảo đã import phần carousel

class WeddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mời Cưới Thời 5.0',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Thiệp Cưới Điện Tử'),
          backgroundColor: Colors.pink,
        ),
        body: Stack(
          children: <Widget>[
            // Banner phủ toàn bộ nền màn hình
            Positioned.fill(
              child: Image.network(
                'https://w.ladicdn.com/s768x739/5c728619c417ab07e5194baa/z5583219164432_981e1b1759655c926afea9680f0cbef7-20240628123950-rmi1q.jpg', // Thay bằng URL banner bạn muốn dùng
                fit: BoxFit.cover,
              ),
            ),
            // Nội dung chính của trang
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        // Headline 1
                        Text(
                          'MỜI CƯỚI THỜI 5.0',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Văn bản có màu trắng để dễ nhìn trên nền tối
                          ),
                        ),
                        SizedBox(height: 8),
                        // Headline 2
                        Text(
                          'KHO GIAO DIỆN MẪU THIỆP CƯỚI ĐIỆN TỬ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70, // Chỉnh màu cho văn bản
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        // Paragraph
                        Text(
                          'Hãy lựa chọn cho mình 1 mẫu thiệp "ưng ý nhất", cho đám cưới của bạn trở nên "Đặc Biệt" và "Đáng Nhớ" với mọi người. ♥',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // Chỉnh màu văn bản cho dễ nhìn
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 32),
                        // Carousel section - Sample
                        // Carousel(),
                        SizedBox(height: 32),
                        // Card section replacing ElevatedButton
                     // Thêm MyCard khác nếu cần
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
