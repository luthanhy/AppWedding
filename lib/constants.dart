import 'package:flutter/material.dart';
import 'package:appwedding/models/product/product.dart';

// Just for demo
const productDemoImg1 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_1-20250113070620-c5rhh.jpg";
const productDemoImg2 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_2-20250113071920-zybct.jpg";
const productDemoImg3 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_3-20250113071920-eh7fl.jpg";
const productDemoImg4 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_4-20250113071736-c3ijq.jpg";
const productDemoImg5 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_5-20250113073538-d33-c.jpg";
const productDemoImg6 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_6-20250113073546-_4306.jpg";

const productDemoImg9 =
    "https://w.ladicdn.com/66cb3f3af913d20011c3173a/album_6-20250113073546-_4306.jpg";
// End For demo

const grandisExtendedFont = "Grandis Extended";

// On color 80, 60.... those means opacity

const Color primaryColor = Color(0xFF7B61FF);

const MaterialColor primaryMaterialColor =
    MaterialColor(0xFF9581FF, <int, Color>{
  50: Color(0xFFEFECFF),
  100: Color(0xFFD7D0FF),
  200: Color(0xFFBDB0FF),
  300: Color(0xFFA390FF),
  400: Color(0xFF8F79FF),
  500: Color(0xFF7B61FF),
  600: Color(0xFF7359FF),
  700: Color(0xFF684FFF),
  800: Color(0xFF5E45FF),
  900: Color(0xFF6C56DD),
});

const Color blackColor = Color(0xFF16161E);
const Color blackColor80 = Color(0xFF45454B);
const Color blackColor60 = Color(0xFF737378);
const Color blackColor40 = Color(0xFFA2A2A5);
const Color blackColor20 = Color(0xFFD0D0D2);
const Color blackColor10 = Color(0xFFE8E8E9);
const Color blackColor5 = Color(0xFFF3F3F4);

const Color whiteColor = Colors.white;
const Color whileColor80 = Color(0xFFCCCCCC);
const Color whileColor60 = Color(0xFF999999);
const Color whileColor40 = Color(0xFF666666);
const Color whileColor20 = Color(0xFF333333);
const Color whileColor10 = Color(0xFF191919);
const Color whileColor5 = Color(0xFF0D0D0D);

const Color greyColor = Color(0xFFB8B5C3);
const Color lightGreyColor = Color(0xFFF8F8F9);
const Color darkGreyColor = Color(0xFF1C1C25);
// const Color greyColor80 = Color(0xFFC6C4CF);
// const Color greyColor60 = Color(0xFFD4D3DB);
// const Color greyColor40 = Color(0xFFE3E1E7);
// const Color greyColor20 = Color(0xFFF1F0F3);
// const Color greyColor10 = Color(0xFFF8F8F9);
// const Color greyColor5 = Color(0xFFFBFBFC);

const Color purpleColor = Color(0xFF7B61FF);
const Color successColor = Color(0xFF2ED573);
const Color warningColor = Color(0xFFFFBE21);
const Color errorColor = Color(0xFFEA5B5B);

const double defaultPadding = 16.0;
const double defaultBorderRadious = 12.0;
const Duration defaultDuration = Duration(milliseconds: 300);

const pasNotMatchErrorText = "passwords do not match";

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);


List<Product> demoProducts = [
  Product(
    title: "Thiệp Cưới Cổ Điển",
    image: "assets/images/product_demo_1.jpg",  // Đặt hình ảnh sản phẩm
    brandName: "Brand 1",
    price: 140.0,
    priceAfterDiscount: 120.0,
    discountPercent: 10,
    isAvailable: true,
  ),
  Product(
    title: "Thiệp Cưới Đơn Giản",
    image: "assets/images/product_demo_2.jpg",  // Hình ảnh sản phẩm khác
    brandName: "Brand 2",
    price: 100.0,
    priceAfterDiscount: 85.0,
    discountPercent: 15,
    isAvailable: true,
  ),
  // Thêm sản phẩm mẫu nếu cần
];
