import 'package:appwedding/compoments/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../compoments/my_card.dart';

class Weddingpage extends StatelessWidget {
  const Weddingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: BottomCurveClipper(),
                  child: Container(
                    height: 850,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://w.ladicdn.com/s768x739/5c728619c417ab07e5194baa/z5583219164432_981e1b1759655c926afea9680f0cbef7-20240628123950-rmi1q.jpg',
                        ),
                        fit: BoxFit
                            .cover, // Đảm bảo ảnh hiển thị với BoxFit.cover
                      ),
                    ),
                  ),
                ),
                // Lớp phủ mờ đen
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5), // Lớp phủ mờ
                  ),
                ),
                // Chữ nằm trên ảnh
                Positioned(
                  left: 0,
                  right: 0,
                  top: 80,
                  child: Column(
                    children: [
                      Text(
                        'MỜI CƯỚI THỜI 5.0',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'KHO GIAO DIỆN MẪU\nTHIỆP CƯỚI ĐIỆN TỬ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Hãy lựa chọn cho mình 1 mẫu thiệp "ưng ý nhất", cho đám cưới của bạn trở nên "Đặc Biệt" và "Đáng Nhớ" với mọi người. ❤️',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 181, 181, 1.0),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      MyCard(
                        title: 'TRẢI NGHIỆM TẠI MEWEDDING',
                        text:
                            'Dâu Rể chỉ cần chọn mẫu thiệp, gửi ảnh và thông tin, còn lại meWedding sẽ lo từ A-Z . Dâu rể chỉ chờ duyệt và sửa cho vừa ý.',
                        buttons: [
                          MyButton(
                              icon: null,
                              text: 'Hỗ trợ 24/7 mọi lúc mọi nơi',
                              backgroundColor: Colors.black54,
                              onPressed: () {}),
                          MyButton(
                              icon: null,
                              text: 'Chỉnh sửa thiệp không giới hạn',
                              backgroundColor: Colors.black54,
                              onPressed: () {}),
                          MyButton(
                              icon: null,
                              text: 'Tùy biến thiệp, thay đổi theo ý Dâu Rể',
                              backgroundColor: Colors.black54,
                              onPressed: () {}),
                          MyButton(
                              icon: null,
                              text:
                                  'Designer trên 3 năm kinh nghiệm \nlàm thiệp sửa thiệp hỗ trợ Trọn Đời',
                              backgroundColor: Colors.black54,
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
                icon: Icons.diamond_rounded,
                backgroundColor: Colors.redAccent[100],
                textColor: Color.fromRGBO(207, 1, 1, 1.0),
                text: 'Giao diện gói VIP',
                onPressed: () {}),
            SizedBox(height: 20),
            MyButton(
                icon: Icons.settings,
                backgroundColor: Colors.white54,
                textColor: Colors.black,
                text: 'Giao diện gói PRO',
                onPressed: () {}),
            SizedBox(height: 20),
            MyButton(
              icon: Icons.settings,
              backgroundColor: Colors.white54,
              textColor: Colors.black,
              text: 'Giao diện gói BASIC',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0); // Điểm đầu, góc trên bên trái
    path.lineTo(0, size.height); // Điểm dưới bên trái
    path.quadraticBezierTo(
        size.width / 2, size.height + 30, size.width, size.height); // Đoạn cong
    path.lineTo(size.width, 0); // Điểm trên bên phải
    path.close(); // Đóng lại đường path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Không cần tái tạo clipper khi thay đổi
  }
}
