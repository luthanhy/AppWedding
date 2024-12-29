import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Card Example")),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TRẢI NGHIỆM TẠI MEWEDDING",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Dâu Rể chỉ cần chọn mẫu thiệp, gửi ảnh và thông tin, "
                      "còn lại meWedding sẽ lo từ A-Z. Dâu rể chỉ chờ duyệt và sửa cho vừa ý.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                // First button
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.white),
                  label: Text("Chỉnh sửa thiệp không giới hạn"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
                SizedBox(height: 15),
                // Second button
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.adjust, color: Colors.white),
                  label: Text("Tùy biến thiệp, thay đổi theo ý Dâu Rể"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
                SizedBox(height: 15),
                // Third button
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.design_services, color: Colors.white),
                  label: Text("Designer trên 3 năm kinh nghiệm\nlàm thiệp sửa thiệp hỗ trợ Trọn Đời"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

