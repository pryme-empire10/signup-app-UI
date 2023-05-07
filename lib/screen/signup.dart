import 'package:flutter/material.dart';
import '../widget/custom_button.dart';
import '../widget/custom_divider.dart';
import '../widget/my_custom_textform.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem Ipsum is simply dummy text',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
                      const MyCustomTextForm(
                        text: 'Name',
                      ),
                      const SizedBox(height: 10),
                      const MyCustomTextForm(
                        text: 'Your Email',
                        keyboard: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10),
                      MyCustomTextForm(
                        text: 'Password',
                        obscureText: _isShowPassword,
                        icon: toggleVisibility(),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text('Remember Password')
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  onPressed: () {},
                  color: const Color(0xFF000080),
                  text: 'Sign Up',
                  textColor: const Color(0xFFFFFFFF),
                ),
                const SizedBox(height: 20),
                const CustomDivider(),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () {},
                  color: const Color(0xFFFFFFFF),
                  text: 'Sign in with Google',
                  border: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  textColor: const Color(0xFF000000),
                  imagePath: 'assets/images/google_logo.png',
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Have an account?'),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xFF000080),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget toggleVisibility() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isShowPassword = !_isShowPassword;
        });
      },
      icon: _isShowPassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
    );
  }
}
