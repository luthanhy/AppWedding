// For demo only
import '../../constants.dart';

class ProductModel {
  final String image, brandName, title;
  final double price;
  final double? priceAfetDiscount;
  final int? dicountpercent;

  ProductModel({
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    this.priceAfetDiscount,
    this.dicountpercent,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: json['image'] ?? '',
      title: json['title'] ?? '',
      brandName: json['brandName'] ?? '',
      price: json['price']?.toDouble() ?? 0.0,
      priceAfetDiscount: json['priceAfetDiscount']?.toDouble() ?? 0.0,
      dicountpercent: json['dicountpercent'] ?? 0,
    );
  }
}

//
// List<ProductModel> demoPopularProducts = [
//   ProductModel(
//     image: "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_1-20250113070620-c5rhh.jpg",
//     title: "Thiệp Cưới Cổ Điển",
//     brandName: "Mẫu 1",
//     price: 540,
//     priceAfetDiscount: 420,
//     dicountpercent: 20,
//   ),
//   ProductModel(
//     image: "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_2-20250113071920-zybct.jpg",
//     title: "Thiệp Cưới Hiện Đại",
//     brandName: "Mẫu 2 ",
//     price: 800,
//   ),
//   ProductModel(
//     image: "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_3-20250113071920-eh7fl.jpg",
//     title: "FS - Nike Air Max 270 Really React",
//     brandName: "Lipsy london",
//     price: 650.62,
//     priceAfetDiscount: 390.36,
//     dicountpercent: 40,
//   ),
//   ProductModel(
//     image: "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_4-20250113071736-c3ijq.jpg",
//     title: "Green Poplin Ruched Front",
//     brandName: "Lipsy london",
//     price: 1264,
//     priceAfetDiscount: 1200.8,
//     dicountpercent: 5,
//   ),
//   ProductModel(
//     image:
//         "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_7-20250113073910-g0ypg.jpg",
//     title: "Green Poplin Ruched Front",
//     brandName: "Lipsy london",
//     price: 650.62,
//     priceAfetDiscount: 390.36,
//     dicountpercent: 40,
//   ),
//   ProductModel(
//     image:
//         "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_8-20250113074007-vx5sz.jpg",
//     title: "white satin corset top",
//     brandName: "Lipsy london",
//     price: 1264,
//     priceAfetDiscount: 1200.8,
//     dicountpercent: 5,
//   ),
// ];
// List<ProductModel> demoFlashSaleProducts = [
//   ProductModel(
//     image: productDemoImg5,
//     title: "FS - Nike Air Max 270 Really React",
//     brandName: "Lipsy london",
//     price: 650.62,
//     priceAfetDiscount: 390.36,
//     dicountpercent: 40,
//   ),
//   ProductModel(
//     image: productDemoImg6,
//     title: "Green Poplin Ruched Front",
//     brandName: "Lipsy london",
//     price: 1264,
//     priceAfetDiscount: 1200.8,
//     dicountpercent: 5,
//   ),
//   ProductModel(
//     image: productDemoImg4,
//     title: "Mountain Beta Warehouse",
//     brandName: "Lipsy london",
//     price: 800,
//     priceAfetDiscount: 680,
//     dicountpercent: 15,
//   ),
// ];
// List<ProductModel> demoBestSellersProducts = [
//   ProductModel(
//     image:
//         "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_7-20250113073910-g0ypg.jpg",
//     title: "Green Poplin Ruched Front",
//     brandName: "Lipsy london",
//     price: 650.62,
//     priceAfetDiscount: 390.36,
//     dicountpercent: 40,
//   ),
//   ProductModel(
//     image:
//         "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_8-20250113074007-vx5sz.jpg",
//     title: "white satin corset top",
//     brandName: "Lipsy london",
//     price: 1264,
//     priceAfetDiscount: 1200.8,
//     dicountpercent: 5,
//   ),
//   ProductModel(
//     image: productDemoImg4,
//     title: "Mountain Beta Warehouse",
//     brandName: "Lipsy london",
//     price: 800,
//     priceAfetDiscount: 680,
//     dicountpercent: 15,
//   ),
// ];
// List<ProductModel> kidsProducts = [
//   ProductModel(
//     image: "https://i.imgur.com/dbbT6PA.png",
//     title: "Green Poplin Ruched Front",
//     brandName: "Lipsy london",
//     price: 650.62,
//     priceAfetDiscount: 590.36,
//     dicountpercent: 24,
//   ),
//   ProductModel(
//     image: "https://i.imgur.com/7fSxC7k.png",
//     title: "Printed Sleeveless Tiered Swing Dress",
//     brandName: "Lipsy london",
//     price: 650.62,
//   ),
//   ProductModel(
//     image: "https://i.imgur.com/pXnYE9Q.png",
//     title: "Ruffle-Sleeve Ponte-Knit Sheath ",
//     brandName: "Lipsy london",
//     price: 400,
//   ),
//   ProductModel(
//     image: "https://i.imgur.com/V1MXgfa.png",
//     title: "Green Mountain Beta Warehouse",
//     brandName: "Lipsy london",
//     price: 400,
//     priceAfetDiscount: 360,
//     dicountpercent: 20,
//   ),
//   ProductModel(
//     image: "https://i.imgur.com/8gvE5Ss.png",
//     title: "Printed Sleeveless Tiered Swing Dress",
//     brandName: "Lipsy london",
//     price: 654,
//   ),
//   ProductModel(
//     image: "https://i.imgur.com/cBvB5YB.png",
//     title: "Mountain Beta Warehouse",
//     brandName: "Lipsy london",
//     price: 250,
//   ),
// ];
