import 'package:appwedding/models/product/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:appwedding/components/utils/buy_full_ui_kit.dart';
import 'package:appwedding/components/utils/card_button.dart';
import 'package:appwedding/components/utils/custom_modal_card_button_sheet.dart';
import 'package:appwedding/components/utils/product_card.dart';
import 'package:appwedding/constants.dart';
// import 'package:shop/screens/product/views/product_returns_screen.dart';

import 'package:appwedding/route/screen_export.dart';

// import 'components/notify_me_card.dart';
import 'package:appwedding/components/utils/product_image.dart';
import 'package:appwedding/components/utils/product_info.dart';
// import 'components/product_list_tile.dart';
// import '../../../components/review_card.dart';
// import 'product_buy_now_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    this.isProductAvailable = true,
  });

  final bool isProductAvailable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CartButton(
        price: 140,
        press: () {
          // Tùy chọn khác khi nhấn vào CartButton
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
            const ProductImages(
              images: [productDemoImg1, productDemoImg2, productDemoImg3],
            ),
            ProductInfo(
              brand: "Mẫu 1",
              title: "Thiệp Cưới Cổ Điển",
              isAvailable: isProductAvailable,
              description:
                  "Thiết kế truyền thống với họa tiết hoa văn, màu sắc nhẹ nhàng, phù hợp với những cặp đôi yêu thích sự thanh thoát, sang trọng.",
              rating: 4.4,
              numOfReviews: 126,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Có Thể Bạn Thích Những Mẫu Dưới Đây",
                  style: Theme.of(context).textTheme.titleSmall!,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      demoPopularProducts.length, // Đếm số lượng sản phẩm
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: defaultPadding,
                        right: index == demoPopularProducts.length - 1
                            ? defaultPadding
                            : 0),
                    child: ProductCard(
                      image: demoPopularProducts[index].image,
                      title: demoPopularProducts[index].title,
                      brandName: demoPopularProducts[index].brandName,
                      price: demoPopularProducts[index].price,
                      priceAfetDiscount:
                          demoPopularProducts[index].priceAfetDiscount,
                      dicountpercent: demoPopularProducts[index].dicountpercent,
                      press: () {
                        // Điều hướng tới màn hình chi tiết sản phẩm
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsScreen(
                              isProductAvailable: true,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
  }
}
