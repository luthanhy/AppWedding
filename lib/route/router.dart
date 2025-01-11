import 'package:flutter/material.dart';

import './screen_export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          bool isProductAvailable = settings.arguments as bool? ?? true;
          return ProductDetailsScreen(isProductAvailable: isProductAvailable);
        },
      );
    case onSaleScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OnSaleScreen(),
      );
    // case kidsScreenRoute:
    //   return MaterialPageRoute(
    //     builder: (context) => const KidsScreen(),
    //   );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const IntroductionAnimationScreen(),
      );
  }
}
