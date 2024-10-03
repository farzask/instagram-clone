import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            SvgPicture.asset(
              'assets/images/ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(height: 64),

            // textfield for email
            TextFieldInput(
              textEditingController: _emailController,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 20),

            // textfield for password
            TextFieldInput(
              textEditingController: _passwordController,
              hintText: 'Password',
              isPassword: true,
              textInputType: TextInputType.text,
            ),

            const SizedBox(height: 20),
            //login button
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              minWidth: double.infinity,
              height: 48,
              color: blueColor,
              shape: const RoundedRectangleBorder(),
              child: const Text('Login'),
            ),
          ],
        ),
      )),
    );
  }
}
