import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Lưu vị trí mục được chọn
  final List<String> _titles = [
    'Về chúng tôi',
    'Dịch vụ',
    'Thanh toán',
    'Liên hệ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'Bạn đã chọn: ${_titles[_currentIndex]}',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          // Mục 1: Về chúng tôi
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Về chúng tôi',
          ),
          // Mục 2: Dịch vụ
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services),
            label: 'Dịch vụ',
          ),
          // Mục 3: Thanh toán
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Thanh toán',
          ),
          // Mục 4: Liên hệ
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Liên hệ',
          ),
        ],
      ),
    );
  }
}
