import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:appwedding/models/product/product_cart.dart';

class ApiService {
    final Dio _dio = Dio();

  // Địa chỉ API của bạn
  final String baseUrl = 'https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1/GetAllProduct';

  // Lấy danh sách sản phẩm
  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await _dio.post(baseUrl);
      if (response.statusCode == 200) {
        print(response.data);
        List<ProductModel> products = (response.data['data'] as List)
            .map((product) => ProductModel.fromJson(product))
            .toList();
        return products;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to load products');
    }
  }
}
