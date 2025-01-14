import 'package:flutter/material.dart';
import '../utils/product_card.dart';
import '../../models/product/product_cart.dart';
import 'package:get/get.dart';
import '../../../../constants.dart';
import '../../../../route/route_constants.dart';
import 'package:appwedding/controllers/product_controller.dart';

class OnSaleScreen extends StatelessWidget {
  const OnSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("On Sale"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding / 2),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Text(
                  "On Sale Products",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.pinkAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Obx(() {
                if (productController.products.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final onSaleProducts = productController.products
                    .where((product) => product.dicountpercent != null && product.dicountpercent! > 0)
                    .toList();

                if (onSaleProducts.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Icon(Icons.local_offer_outlined, size: 80, color: Colors.grey),
                      const SizedBox(height: 20),
                      Text(
                        "No products on sale.",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                      ),
                    ],
                  );
                }

                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45, // Reduce height to allow more room
                  child: PageView.builder(
                    itemCount: onSaleProducts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding / 2,
                          horizontal: defaultPadding / 3, // Reduce horizontal padding
                        ),
                        child: ProductCard(
                          image: onSaleProducts[index].image,
                          brandName: onSaleProducts[index].brandName,
                          title: onSaleProducts[index].title,
                          price: onSaleProducts[index].price,
                          priceAfetDiscount: onSaleProducts[index].priceAfetDiscount,
                          dicountpercent: onSaleProducts[index].dicountpercent,
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
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
