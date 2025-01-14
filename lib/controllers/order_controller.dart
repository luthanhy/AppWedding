import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:appwedding/models/product/Order.dart';

class OrderController extends GetxController {
  var isLoading = false.obs;
  var orders = <Order>[].obs;

  Future<void> fetchOrders(String email) async {
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse("https://e3ad-171-251-221-117.ngrok-free.app/abcd-4b368/us-central1/GetPaymentByEmail"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"email": email}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['success'] == true) {
          orders.value = (data['data'] as List)
              .map((order) => Order.fromJson(order))
              .toList();
        } else {
          Get.snackbar("Error", data['message'] ?? "Failed to fetch orders.");
        }
      } else {
        Get.snackbar("Error", "Failed to fetch orders. Please try again.");
      }
    } catch (e) {
      Get.snackbar("Error", "An error occurred: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
