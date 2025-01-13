import 'package:flutter/material.dart';
import 'package:appwedding/components/utils/product_card.dart';
import 'package:appwedding/models/product/product_model.dart';
import 'package:appwedding/route/screen_export.dart';
import 'package:get/get.dart';
import 'package:appwedding/controllers/product_controller.dart';

import '../../../../constants.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the ProductController
    ProductController productController = Get.put(ProductController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Trải Nghiệm Các Mẫu Thiệp Có Sẵn Dưới Đây",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Obx(() {
          // Check if products are empty
          if (productController.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
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
                  priceAfetDiscount: productController.products[index].priceAfetDiscount,
                  dicountpercent: productController.products[index].dicountpercent,
                  press: () {
                    Navigator.pushNamed(
                      context,
                      productDetailsScreenRoute,
                      arguments: {
                        'isProductAvailable': index.isEven,
                        'index': index,
                      },
                    );
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
