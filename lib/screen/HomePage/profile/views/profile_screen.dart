import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwedding/constants.dart';
import 'package:appwedding/route/screen_export.dart';
import 'package:appwedding/services/authen_service.dart';

import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthController _authController = AuthController();
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLoggedIn = prefs.getBool('isLogin') != null;
    });
  }

  Future<void> _logout() async {
    try {
      // await _authController.logout();
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('isLogin');
      setState(() {
        _isLoggedIn = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Logged out successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileMenuListTile(
            text: _isLoggedIn ? "Profile" : "Login",
            svgSrc: "assets/icons/Order.svg",
            press: () {
              if (_isLoggedIn) {
                Navigator.pushNamed(context, userInfoScreenRoute);
              } else {
                Navigator.pushNamed(context, loginScreenRoute);
              }
            },
          ),
          const SizedBox(height: defaultPadding),
          if (_isLoggedIn) ...[
            ProfileMenuListTile(
              text: "Orders",
              svgSrc: "assets/icons/Order.svg",
              press: () {
                // Navigator.pushNamed(context, ordersScreenRoute);
              },
            ),
            ProfileMenuListTile(
              text: "Returns",
              svgSrc: "assets/icons/Return.svg",
              press: () {},
            ),
            const SizedBox(height: defaultPadding),
          ],
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ProfileMenuListTile(
            text: "Language",
            svgSrc: "assets/icons/Language.svg",
            press: () {
              // Navigator.pushNamed(context, selectLanguageScreenRoute);
            },
          ),
          const SizedBox(height: defaultPadding),
          if (_isLoggedIn)
            ListTile(
              onTap: _logout,
              minLeadingWidth: 24,
              leading: SvgPicture.asset(
                "assets/icons/Logout.svg",
                height: 24,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  errorColor,
                  BlendMode.srcIn,
                ),
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(color: errorColor, fontSize: 14, height: 1),
              ),
            ),
        ],
      ),
    );
  }
}
