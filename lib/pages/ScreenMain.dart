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
                Image.network(
                  'https://marketplace.canva.com/print-mockup/bundle/FTpibBRols4/corners%3Asquare%2Cproductsize%3Aportrait%2Csurface%3Amarketplace/surface%3Amarketplace/EAEM7hvK84Y/1/0/1143w/canva-%25C4%2591en-v%25C3%25A0-v%25C3%25A0ng-%25C4%2591%25E1%25BB%2593ng-%25C4%2591%25C6%25B0%25E1%25BB%259Dng-k%25E1%25BA%25BB-gi%25E1%25BA%25A3n-d%25E1%25BB%258B-%25E1%25BA%25A3nh-gh%25C3%25A9p-l%25E1%25BB%2585-c%25C6%25B0%25E1%25BB%259Bi-thi%25E1%25BB%2587p-m%25E1%25BB%259Di-NACd0htyoNE.jpg?sig=4261a52e8748ec964c6911465a63676a&width=800', // Link hình ảnh laptop
                  width: 300,
                ),
                Positioned(
                  bottom: 50,
                  child: Image.network(
                    'https://marketplace.canva.com/print-mockup/bundle/FTpibBRols4/corners%3Asquare%2Cproductsize%3Aportrait%2Csurface%3Amarketplace/surface%3Amarketplace/EAEM7hvK84Y/1/0/1143w/canva-%25C4%2591en-v%25C3%25A0-v%25C3%25A0ng-%25C4%2591%25E1%25BB%2593ng-%25C4%2591%25C6%25B0%25E1%25BB%259Dng-k%25E1%25BA%25BB-gi%25E1%25BA%25A3n-d%25E1%25BB%258B-%25E1%25BA%25A3nh-gh%25C3%25A9p-l%25E1%25BB%2585-c%25C6%25B0%25E1%25BB%259Bi-thi%25E1%25BB%2587p-m%25E1%25BB%259Di-NACd0htyoNE.jpg?sig=4261a52e8748ec964c6911465a63676a&width=800', // Link hình ảnh điện thoại
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
            SizedBox(height: 10),
            Center(
              child: Text(
                "Sở hữu Thiệp online dễ Dàng với chi phí hấp dẫn",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 40),
            // Thêm 3 khối hộp
            _buildBox("Basic", "168,000đ", "Trải nghiệm tiêu chuẩn"),
            SizedBox(height: 16),
            _buildBox("Standard", "268,000đ", "Trải nghiệm nâng cao"),
            SizedBox(height: 16),
            _buildBox("Premium", "368,000đ", "Trải nghiệm VIP"),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String title, String price, String description) {
    return Container(
      width: 240,
      height: 188,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Xem chi tiết $title");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Xem chi tiết",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
