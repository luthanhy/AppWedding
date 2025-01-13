import 'package:flutter/material.dart';
import '../utils/product_card.dart';
import 'package:get/get.dart';
import 'package:appwedding/controllers/product_controller.dart';

import '../Banner/banner_m_with_counter.dart';
import '../../models/product/product_cart.dart';
import '../../../../constants.dart';
import '../../../../route/route_constants.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Khởi tạo ProductController và sử dụng Obx để theo dõi sự thay đổi
    ProductController productController = Get.put(ProductController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Hiển thị Banner cho Flash Sale
        BannerMWithCounter(
          duration: const Duration(hours: 8),
          text: "Super Flash Sale \n50% Off",
          press: () {},
        ),
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Flash sale",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),

        // Dùng Obx để theo dõi và cập nhật khi danh sách sản phẩm thay đổi
        Obx(() {
          // Nếu danh sách sản phẩm trống, hiển thị màn hình loading hoặc thông báo
          if (productController.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          // Hiển thị danh sách sản phẩm khi có dữ liệu
          return SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productController.products.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: defaultPadding,
                  right: index == productController.products.length - 1
                      ? defaultPadding
                      : 0,
                ),
                child: ProductCard(
                  image: productController.products[index].image,
                  brandName: productController.products[index].brandName,
                  title: productController.products[index].title,
                  price: productController.products[index].price,
                  priceAfetDiscount:
                  productController.products[index].priceAfetDiscount,
                  dicountpercent: productController.products[index].dicountpercent,
                  press: () {
                    Navigator.pushNamed(context, productDetailsScreenRoute,
                      arguments: {
                        'isProductAvailable': index.isEven,
                        'index': index,
                      },);
                  },
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
