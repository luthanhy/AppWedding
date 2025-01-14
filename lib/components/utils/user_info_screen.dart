import 'package:flutter/material.dart';
import 'package:appwedding/services/authen_service.dart';
import 'package:appwedding/models/User/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final AuthController _authController = AuthController();
  late Future<User> _userInfo;

  @override
  void initState() {
    super.initState();
    _userInfo = _fetchUserInfo();
  }

  Future<User> _fetchUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString('emailLogin');
    if (email != null) {
      return await _authController.getUserByEmail(email);
    }
    return User(username: 'Guest', email: 'N/A');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder<User>(
        future: _userInfo,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(
              child: Text('User not found.'),
            );
          }

          final user = snapshot.data!;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Avatar Section
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: const NetworkImage('https://w7.pngwing.com/pngs/205/731/png-transparent-default-avatar.png'),
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 20),

                  // User Information
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.person, color: Colors.blue),
                            title: Text(
                              user.username,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            subtitle: const Text('Username'),
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.email, color: Colors.blue),
                            title: Text(
                              user.email,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            subtitle: const Text('Email'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Edit Profile Button
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/editProfile');
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
