import 'package:flutter/material.dart';
import '../compoments/my_card.dart';
import 'carousel.dart'; // Đảm bảo đã import phần carousel

class WeddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Banner phủ toàn bộ nền màn hình
            Positioned.fill(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    'https://w.ladicdn.com/s768x739/5c728619c417ab07e5194baa/z5583219164432_981e1b1759655c926afea9680f0cbef7-20240628123950-rmi1q.jpg',
                    fit: BoxFit.cover,
                  ),
                  // Tạo hiệu ứng bóng đen
                  // Container(
                  //   color: Colors.black.withOpacity(0.3), // Điều chỉnh độ mờ của bóng đen
                  // ),
                ],
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF5C5C), // Văn bản màu sắc phù hợp
                          ),
                        ),
                        SizedBox(height: 8),
                        // Headline 2
                        Text(
                          'KHO GIAO DIỆN MẪU THIỆP CƯỚI ĐIỆN TỬ',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        // Paragraph
                        Text(
                          'Hãy lựa chọn cho mình 1 mẫu thiệp "ưng ý nhất", cho đám cưới của bạn trở nên "Đặc Biệt" và "Đáng Nhớ" với mọi người. ♥',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFFB5B5),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 32),
                        // Carousel section - Sample
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
