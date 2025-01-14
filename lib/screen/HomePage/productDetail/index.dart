import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appwedding/components/utils/buy_full_ui_kit.dart';
import 'package:appwedding/components/utils/card_button.dart';
import 'package:appwedding/components/utils/product_card.dart';
import 'package:appwedding/constants.dart';
import 'package:appwedding/route/screen_export.dart';
import 'package:appwedding/components/utils/product_image.dart';
import 'package:appwedding/components/utils/product_info.dart';
import 'package:appwedding/models/product/product.dart';
import 'package:appwedding/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwedding/services/BookmarkManager.dart';

class ProductDetailsScreen extends StatelessWidget {
   ProductDetailsScreen({
    super.key,
    this.isProductAvailable = true,
    required this.productIndex, // Nhận index sản phẩm làm tham số
  });

  final bool isProductAvailable;
  final int productIndex; // Chỉ số sản phẩm được truyền vào

  final BookMarkManager _bookmarkManager = BookMarkManager(); // Quản lý bookmark

  Future<bool> _isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogin') ?? false;
  }

  Future<String> _getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('emailLogin') ?? '';
  }

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Obx(() {
      if (productController.products.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      final product = productController.products[productIndex];

      return Scaffold(
        bottomNavigationBar: CartButton(
          price: product.price,
          press: () async {
            final isLoggedIn = await _isUserLoggedIn();
            final email = await _getEmail();
            final nameProduct = product.brandName;
            final url = Uri.encodeFull(
              "https://ad06-42-115-94-145.ngrok-free.app/order/create_payment_url?amount=${Uri.encodeQueryComponent(product.price.toString())}&email==${Uri.encodeQueryComponent(email)}&email==${Uri.encodeQueryComponent(nameProduct.toString())}",
            );
            if (isLoggedIn) {
              Navigator.pushNamed(
                context,
                WebViewScreenRoute,
                arguments: url,
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vui Lòng Đăng Nhập Trước Khi Thanh Toán')),
              );
              Navigator.pushNamed(context, loginScreenRoute);
            }
          },
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                floating: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      if (_bookmarkManager.isBookmarked(product)) {
                        _bookmarkManager.removeBookmark(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Đã xóa khỏi bookmark')),
                        );
                      } else {
                        _bookmarkManager.addBookmark(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Đã thêm vào bookmark')),
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/Bookmark.svg",
                      color: _bookmarkManager.isBookmarked(product)
                          ? Colors.red
                          : Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ],
              ),
              ProductImages(
                images: [product.image],
              ),
              ProductInfo(
                brand: product.brandName,
                title: product.title,
                isAvailable: isProductAvailable,
                description: product.description ?? "",
                rating: 4.4,
                numOfReviews: 126,
              ),
              SliverPadding(
                padding: const EdgeInsets.all(defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    "Các mẫu tham khảo",
                    style: Theme.of(context).textTheme.titleSmall!,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productController.products.length,
                    itemBuilder: (context, index) {
                      var product = productController.products[index];
                      return Padding(
                        padding: EdgeInsets.only(
                            left: defaultPadding,
                            right: index == productController.products.length - 1
                                ? defaultPadding
                                : 0),
                        child: ProductCard(
                          image: product.image,
                          title: product.title,
                          brandName: product.brandName,
                          price: product.price,
                          priceAfetDiscount: product.priceAfetDiscount,
                          dicountpercent: product.dicountpercent,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(
                                  isProductAvailable: true,
                                  productIndex: index,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: defaultPadding),
              )
            ],
          ),
        ),
      );
    });
  }
}