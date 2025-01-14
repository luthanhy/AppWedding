import 'package:appwedding/screen/FTUE/index.dart';
import 'package:appwedding/screen/HomePage/bookmark/index.dart';
import 'package:appwedding/screen/HomePage/index.dart';
import 'package:appwedding/screen/HomePage/productDetail/index.dart';
import 'package:appwedding/screen/Login/index.dart';
import 'package:appwedding/screen/SingnUp/index.dart';
import 'package:flutter/material.dart';

import './screen_export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case introductionAnimationScreenroute:
      return MaterialPageRoute(
        builder: (context) => const IntroductionAnimationScreen(),
      );
    case signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case loginScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPoint(),
      );

    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          final args = settings.arguments as Map<String, dynamic>;

          bool isProductAvailable = args['isProductAvailable'] ?? true;
          int index = args['index'] ?? 0;

          return  ProductDetailsScreen(
            isProductAvailable: isProductAvailable,
              productIndex:index
          );
        },
      );
    case WebViewScreenRoute:
      final String url = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => WebViewScreen(url: url), // Pass url as a normal variable, not const
      );
    case onSaleScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OnSaleScreen(),
      );
    case bookmarkScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const BookmarkScreen(),
      );
    // case kidsScreenRoute:
    //   return MaterialPageRoute(
    //     builder: (context) => const KidsScreen(),
    //   );
    case userInfoScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const UserInfoScreen(),
      );
    case OrderScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OrderScreen(),
      );
    case LanguageSelectionScreenRoute:
      return MaterialPageRoute(
        builder: (context) =>  LanguageSelectionScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const IntroductionAnimationScreen(),
      );
  }
}
