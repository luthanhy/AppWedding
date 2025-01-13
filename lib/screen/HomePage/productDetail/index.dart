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

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    this.isProductAvailable = true,
    required this.productIndex, // Nhận index sản phẩm làm tham số
  });

  final bool isProductAvailable;
  final int productIndex; // Chỉ số sản phẩm được truyền vào

  Future<bool> _isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogin') ?? false;
  }



  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Obx(() {
      // Kiểm tra trạng thái khi danh sách sản phẩm còn trống
      if (productController.products.isEmpty) {
        return const Center(child: CircularProgressIndicator());  // Hiển thị loading nếu sản phẩm trống
      }

      final product = productController.products[productIndex]; // Lấy sản phẩm theo chỉ số từ productController

      return Scaffold(
        bottomNavigationBar: CartButton(
          price: product.price,
          press: () async {
            final isLoggedIn = await _isUserLoggedIn();
            if (isLoggedIn) {
              Navigator.pushNamed(
                context,
                WebViewScreenRoute,
                arguments: "https://8160-42-115-94-145.ngrok-free.app/order/create_payment_url",
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vui Lòng Đăng Nhập Trước Khi Thanh Toán')),
              );
              Navigator.pushNamed(
                context,
                  loginScreenRoute
              );
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
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Bookmark.svg",
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ],
              ),
              ProductImages(
                images: [product.image], // Dùng hình ảnh từ sản phẩm
              ),
              ProductInfo(
                brand: product.brandName,
                title: product.title,
                isAvailable: isProductAvailable,
                description: "",//product.description ??, // Mô tả sản phẩm
                rating:4.4,// product.rating ?? 4.4,  // Đánh giá sản phẩm
                numOfReviews: 126//product.numOfReviews ?? 126, // Số đánh giá
              ),
              SliverPadding(
                padding: const EdgeInsets.all(defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    "You may like these products",
                    style: Theme.of(context).textTheme.titleSmall!,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productController.products.length, // Dùng demoProducts để lặp qua sản phẩm
                    itemBuilder: (context, index) {
                      var product = productController.products[index]; // Lấy sản phẩm
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
                                  productIndex: index, // Truyền chỉ số sản phẩm vào
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
