import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/pages/login_screen.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/textfields.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _fullNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
      ),
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

            // textfield for Full name
            TextFieldInput(
              textEditingController: _fullNameController,
              hintText: 'Full Name',
              textInputType: TextInputType.text,
            ),

            const SizedBox(height: 20),

            // textfield for username
            TextFieldInput(
              textEditingController: _usernameController,
              hintText: 'Username',
              textInputType: TextInputType.text,
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
                        builder: (context) => const SignupScreen()));
              },
              minWidth: double.infinity,
              height: 48,
              color: blueColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: const Text('Sign Up'),
            ),

            Flexible(flex: 2, child: Container()),
            //do you have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    ' Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
