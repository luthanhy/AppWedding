import 'package:appwedding/pages/weddingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'banner.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Danh sách các page
  final List<Widget> _pages = [
    Weddingpage(),
    AboutUsPage(),
    PaymentPage(),
    ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Hiển thị page tương ứng
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
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Về chúng tôi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services),
            label: 'Dịch vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Thanh toán',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Liên hệ',
          ),
        ],
      ),
    );
  }
}

// Các trang con
class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trang Về chúng tôi',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trang Dịch vụ',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trang Thanh toán',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trang Liên hệ',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
