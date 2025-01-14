import 'package:flutter/material.dart';
import 'screen/FTUE/index.dart'; // Kiểm tra đường dẫn import
import 'screen/Login/index.dart'; // Kiểm tra đường dẫn import
import 'screen/HomePage/index.dart'; // Kiểm tra đường dẫn import
import 'screen/HomePage/bookmark/index.dart';
import './route/route_constants.dart';
import './route/router.dart' as router;
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  final bool isFTUE;

  MyApp({required this.isFTUE});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeddingApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: isFTUE ? entryPointScreenRoute : introductionAnimationScreenroute,
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Kiểm tra trạng thái FTUE từ SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFTUE = prefs.getBool('isFTUE') ?? false;

  // Chạy ứng dụng với route khởi tạo phù hợp
  runApp(MyApp(isFTUE: isFTUE));
}
