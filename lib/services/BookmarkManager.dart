import 'dart:convert';
import 'package:appwedding/models/product/product_cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookMarkManager {
  static const String _bookmarkKey = 'bookmarked_products';

  List<ProductModel> bookmarkItems = [];

  /// Thêm sản phẩm vào bookmark và lưu vào SharedPreferences
  Future<void> addBookmark(ProductModel product) async {
    if (!bookmarkItems.contains(product)) {
      bookmarkItems.add(product);
      await _saveToLocal();
    }
  }

  /// Xóa sản phẩm khỏi bookmark và lưu vào SharedPreferences
  Future<void> removeBookmark(ProductModel product) async {
    bookmarkItems.remove(product);
    await _saveToLocal();
  }

  /// Kiểm tra xem sản phẩm có trong bookmark hay không
  bool isBookmarked(ProductModel product) {
    return bookmarkItems.contains(product);
  }

  /// Lưu danh sách bookmark vào SharedPreferences
  Future<void> _saveToLocal() async {
    final prefs = await SharedPreferences.getInstance();
    final data = bookmarkItems.map((product) => product.toJson()).toList();
    await prefs.setString(_bookmarkKey, json.encode(data));
  }

  /// Tải danh sách bookmark từ SharedPreferences
  Future<List<ProductModel>> loadFromLocal() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_bookmarkKey);

    if (data != null && data.isNotEmpty) {
      final List<dynamic> jsonData = json.decode(data);
      bookmarkItems = jsonData.map((item) => ProductModel.fromJson(item)).toList();
    } else {
      bookmarkItems = [];
    }

    return bookmarkItems;
  }

}
