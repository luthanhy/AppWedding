import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';

class WebViewScreen extends StatelessWidget {
  final String url;

  WebViewScreen({required this.url});

  // Hàm mở trình duyệt tùy chỉnh
  Future<void> _launchCustomTab(BuildContext context) async {
    final theme = Theme.of(context); // Lấy theme từ context
    try {
      // Kiểm tra nếu URL hợp lệ
      if (Uri.tryParse(url)?.hasAbsolutePath ?? false) {
        await launchUrl(
          Uri.parse(url),
          options: LaunchOptions(
            barColor: theme.colorScheme.surface,           // Màu của thanh công cụ
            onBarColor: theme.colorScheme.onSurface,       // Màu của chữ trên thanh công cụ
            barFixingEnabled: false,                        // Nếu không muốn thanh công cụ có thể co rút
          ),
        );
      } else {
        throw "Invalid URL: $url"; // Thông báo nếu URL không hợp lệ
      }
    } catch (e) {
      // Hiển thị thông báo nếu URL không mở được
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not open the page. Error: $e'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Browser Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _launchCustomTab(context), // Gọi hàm mở trình duyệt khi ấn nút
          child: const Text('Open Web Page'),
        ),
      ),
    );
  }
}
