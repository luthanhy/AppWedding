import 'package:flutter/material.dart';

import '../../components/SignUp/signupForm.dart';
import '../../components/SignUp/signupTopImage.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SignUpScreenTopImage(),
            Row(
              children: const [
                Spacer(),
                Expanded(
                  flex: 8,
                  child: SignUpForm(),
                ),
                Spacer(),
              ],
            ),
            // const SocalSignUp()
          ],
        ),
      ),
    );
  }
}
