import 'package:flutter/material.dart';
import 'package:appwedding/components/utils/product_card.dart';
import 'package:appwedding/models/product/product_cart.dart';
import 'package:appwedding/constants.dart';
import 'package:appwedding/route/route_constants.dart';
import 'package:appwedding/services/BookmarkManager.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  final BookMarkManager bookmarkManager = BookMarkManager();

  late Future<List<ProductModel>> bookmarksFuture;

  @override
  void initState() {
    super.initState();
    bookmarksFuture = bookmarkManager.loadFromLocal(); // Load bookmarks khi initState được gọi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sản phẩm yêu thích"),
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: bookmarksFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "Lỗi: ${snapshot.error}",
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "Danh sách yêu thích trống",
                style: TextStyle(fontSize: 16),
              ),
            );
          }

          final bookmarkedProducts = snapshot.data!;

          return _buildProductGrid(bookmarkedProducts);
        },
      ),
    );
  }

  Widget _buildProductGrid(List<ProductModel> products) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: 0.66,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            image: product.image,
            brandName: product.brandName,
            title: product.title,
            price: product.price,
            priceAfetDiscount: product.priceAfetDiscount,
            dicountpercent: product.dicountpercent,
            press: () {
              Navigator.pushNamed(
                context,
                productDetailsScreenRoute,
                arguments: {
                  'isProductAvailable': index.isEven,
                  'index': index,
                }, // Truyền sản phẩm vào màn hình chi tiết
              );
            },
          );
        },
      ),
    );
  }
}
