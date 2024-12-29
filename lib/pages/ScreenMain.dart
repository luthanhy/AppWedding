// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeddingUI(),
    );
  }
}

class WeddingUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink[50],
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "MỜI CƯỚI THỜI 5.0",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "THIỆP CƯỚI ONLINE",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "MỜI CƯỚI ONLINE",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Cho Đám Cưới của bạn trở nên\nĐộc Đáo và Đáng Nhớ hơn ♥",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/laptop_background.png', // Hình ảnh laptop
                  width: 300,
                ),
                Positioned(
                  bottom: 50,
                  child: Image.asset(
                    'assets/mobile_preview.png', // Hình ảnh điện thoại
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Happy Wedding",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Đặt làm ngay");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Đặt làm ngay",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    print("Xem mẫu thiệp");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Xem mẫu thiệp",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Website Đám Cưới - Thiệp cưới Online",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Thiệp cưới online, Website đám cưới là 1 trang web dành riêng cho đám cưới của các cặp đôi. Nơi dùng để lưu trữ những khoảnh khắc, kỷ niệm, hình ảnh, video cưới 1 cách mãi mãi.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Là trang web dùng để mời cưới tới bạn bè và người thân thay cho những chiếc thiệp giấy cổ điển, là chiếc thiệp cưới thời 5.0 với rất nhiều tính năng và sự hữu ích. Nơi cung cấp đầy đủ các thông tin cưới cho khách mời của bạn, giúp bạn dễ dàng chia sẻ đến mọi người, mời cưới dễ dàng sành điệu, lưu trữ và chia sẽ câu chuyện tình yêu, album ảnh cưới đến mọi người. Cho phép mọi người gửi lời chúc mừng, gửi tiền mừng cưới online, và có thể xác nhận tham dự đám cưới của bạn,...thật tuyệt phải không !!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // Thêm phần text căn giữa
            Center(
              child: Text(
                "Bắt đầu đám cưới như mơ của bạn với một chiếc thiệp online ngay hôm nay!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Thêm button ở giữa
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print("Chọn thiệp ngay");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Chọn thiệp ngay ->",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
