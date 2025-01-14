import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwedding/controllers/order_controller.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final OrderController orderController = Get.put(OrderController());

  @override
  void initState() {
    super.initState();
    _initializeOrders();
  }

  // Hàm để lấy email và tải danh sách đơn hàng
  Future<void> _initializeOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('emailLogin');
    if (email != null && email.isNotEmpty) {
      await orderController.fetchOrders(email);
    } else {
      Get.snackbar("Lỗi", "Không tìm thấy email. Vui lòng kiểm tra cài đặt.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách đơn hàng"),
      ),
      body: Obx(() {
        if (orderController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (orderController.orders.isEmpty) {
          return Center(child: Text("Không có đơn hàng nào."));
        }
        return ListView.builder(
          itemCount: orderController.orders.length,
          itemBuilder: (context, index) {
            final order = orderController.orders[index];
            return ListTile(
              leading: Icon(Icons.receipt),
              title: Text("Số tiền: ${order.amount}"),
              subtitle: Text(
                "ID sản phẩm: ${order.idProduct}\nThời gian: ${order.time ?? 'N/A'}",
              ),
              isThreeLine: true,
            );
          },
        );
      }),
    );
  }
}
