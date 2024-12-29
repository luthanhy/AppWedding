import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('MEWEDDING')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title section (TRẢI NGHIỆM TẠI MEWEDDING)
              Text(
                'TRẢI NGHIỆM TẠI MEWEDDING',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Description section
              Text(
                'Dâu Rể chỉ cần chọn mẫu thiệp, gửi ảnh và thông tin, còn lại meWedding sẽ lo từ A-Z. Dâu rể chỉ chờ duyệt và sửa cho vừa ý.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Button 1 (Chỉnh sửa thiệp không giới hạn)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  shape: CircleBorder(), // Circle shaped button
                  padding: EdgeInsets.all(20), // Button padding
                ),
                child: Text('Chỉnh sửa thiệp không giới hạn'),
              ),
              SizedBox(height: 20),

              // Button 2 (Tùy biến thiệp, thay đổi theo ý Dâu Rể)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  shape: CircleBorder(), // Circle shaped button
                  padding: EdgeInsets.all(20), // Button padding
                ),
                child: Text('Tùy biến thiệp, thay đổi theo ý Dâu Rể'),
              ),
              SizedBox(height: 20),

              // Button 3 (Designer on 3 years experience)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: CircleBorder(), // Circle shaped button
                  padding: EdgeInsets.all(20), // Button padding
                ),
                child: Text(
                  'Designer trên 3 năm kinh nghiệm\nlàm thiệp sửa thiệp hỗ trợ Trọn Đời',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),

              // Designer Button SVG-like shape (you can replace it with an image or custom widget)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder(),
                  backgroundColor: Colors.purple,
                ),
                child: Icon(Icons.design_services, size: 40, color: Colors.white),
              ),
            ],
          ),
        ),
    );
  }
}