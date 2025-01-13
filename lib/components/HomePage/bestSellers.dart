import 'package:flutter/material.dart';
import '../utils/product_card.dart';
import '../../models/product/product_cart.dart';
import 'package:get/get.dart';
import '../../../../constants.dart';
import '../../../../route/route_constants.dart';
import 'package:appwedding/controllers/product_controller.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Khởi tạo ProductController và đảm bảo sử dụng Obx để theo dõi sự thay đổi
    ProductController productController = Get.put(ProductController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Best sellers",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // Dùng Obx để theo dõi và cập nhật khi danh sách sản phẩm thay đổi
        Obx(() {
          // Kiểm tra nếu danh sách sản phẩm có dữ liệu
          if (productController.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          // Nếu có sản phẩm, hiển thị danh sách
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
        })
      ],
    );
  }
}
