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
  const ProductDetailsScreen({super.key, this.isProductAvailable = true});

  final bool isProductAvailable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ( //: isProductAvailable?
              CartButton(
        price: 140,
        press: () {
          // customModalBottomSheet(
          //   context,
          //   height: MediaQuery.of(context).size.height * 0.92,
          //   child: const ProductBuyNowScreen(),
          // );
        },
      )
          // :

          /// If profuct is not available then show [NotifyMeCard]
          // NotifyMeCard(
          //     isNotify: false,
          //     onChanged: (value) {},
          //   ),
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
            // ProductListTile(
            //   svgSrc: "assets/icons/Product.svg",
            //   title: "Product Details",
            //   press: () {
            //     customModalBottomSheet(
            //       context,
            //       height: MediaQuery.of(context).size.height * 0.92,
            //       child: const BuyFullKit(
            //           images: ["assets/screens/Product detail.png"]),
            //     );
            //   },
            // ),
            // ProductListTile(
            //   svgSrc: "assets/icons/Delivery.svg",
            //   title: "Shipping Information",
            //   press: () {
            //     customModalBottomSheet(
            //       context,
            //       height: MediaQuery.of(context).size.height * 0.92,
            //       child: const BuyFullKit(
            //         images: ["assets/screens/Shipping information.png"],
            //       ),
            //     );
            //   },
            // ),
            // ProductListTile(
            //   svgSrc: "assets/icons/Return.svg",
            //   title: "Returns",
            //   isShowBottomBorder: true,
            //   press: () {
            //     customModalBottomSheet(
            //       context,
            //       height: MediaQuery.of(context).size.height * 0.92,
            //       child: const ProductReturnsScreen(),
            //     );
            //   },
            // ),
            // const SliverToBoxAdapter(
            //   child: Padding(
            //     padding: EdgeInsets.all(defaultPadding),
            //     child: ReviewCard(
            //       rating: 4.3,
            //       numOfReviews: 128,
            //       numOfFiveStar: 80,
            //       numOfFourStar: 30,
            //       numOfThreeStar: 5,
            //       numOfTwoStar: 4,
            //       numOfOneStar: 1,
            //     ),
            //   ),
            // ),
            // ProductListTile(
            //   svgSrc: "assets/icons/Chat.svg",
            //   title: "Reviews",
            //   isShowBottomBorder: true,
            //   press: () {
            //     Navigator.pushNamed(context, productReviewsScreenRoute);
            //   },
            // ),
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
                  itemCount: 1,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: defaultPadding,
                        right: index == 4 ? defaultPadding : 0),
                    child: ProductCard(
                      image: productDemoImg2,
                      title:
                          "Thiệp có phong cách tối giản, đường nét rõ ràng, sắc nét, phù hợp với các cặp đôi yêu thích sự trẻ trung, năng động.",
                      brandName: "Thiệp Cưới Hiện Đại",
                      price: 24.65,
                      priceAfetDiscount: index.isEven ? 20.99 : null,
                      dicountpercent: index.isEven ? 25 : null,
                      press: () {},
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
