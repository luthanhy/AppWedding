import 'dart:convert';

class Product {
  final String title;
  final String image;
  final String brandName;
  final double price;
  final String description;
  final double priceAfterDiscount;
  final int discountPercent;
  final bool isAvailable;

  Product({
    required this.title,
    required this.image,
    required this.brandName,
    required this.price,
    required this.description,
    required this.priceAfterDiscount,
    required this.discountPercent,
    required this.isAvailable,
  });
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'brandName': brandName,
      'price': price,
      'description':description,
      'priceAfterDiscount': priceAfterDiscount,
      'discountPercent': discountPercent,
      'isAvailable': isAvailable,
    };
  }

  // Chuyển Map thành chuỗi JSON
  String toJson() => jsonEncode(toMap());

  // Parse Map từ chuỗi JSON
  static Product fromJson(String jsonString) {
    final Map<String, dynamic> map = jsonDecode(jsonString);
    return Product.fromMap(map);
  }

  // Tạo đối tượng từ Map
  static Product fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'],
      image: map['image'],
      brandName: map['brandName'],
      description:map['description'],
      price: map['price'].toDouble(),
      priceAfterDiscount: map['priceAfterDiscount'].toDouble(),
      discountPercent: map['discountPercent'],
      isAvailable: map['isAvailable'],
    );
  }
}

