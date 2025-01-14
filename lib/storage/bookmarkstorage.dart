import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwedding/models/product/product.dart';

class BookmarkStorage {
  static const String _key = 'bookmarkedItems';
  Future<void> saveBookmarks(List<int> bookmarks) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(_key, bookmarks.map((e) => e.toString()).toList());
  }
  Future<List<Product>> loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedList = prefs.getStringList(_key) ?? [];
    return savedList.map((e) => Product.fromJson(e)).toList();
  }
}