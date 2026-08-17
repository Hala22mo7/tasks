import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFF9F9),
              Colors.white,
              Color(0xFFFDFBFF),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Carrot
                  const SizedBox(height: 55),

                  Center(
                    child: Image.asset(
                      'assets/carrot.png',
                      width: 48,
                      height: 56,
                    ),
                  ),

                  const SizedBox(height: 95),

                  // Sign Up
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF171724),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Enter your credentials to continue',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF858585),
                    ),
                  ),

                  const SizedBox(height: 42),

                  // Username
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF777777),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Afsar Hossen Shuvo',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF252531),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE0E0E0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58B878),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 31),

                  // Email
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF777777),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'imshuvo97@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF252531),
                      ),
                      suffixIcon: Icon(
                        Icons.check,
                        color: Color(0xFF63B47F),
                        size: 24,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE0E0E0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58B878),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 31),

                  // Password
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF777777),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '••••••••',
                      hintStyle: TextStyle(
                        fontSize: 22,
                        letterSpacing: 3,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xFF888888),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE0E0E0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58B878),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Terms
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14.5,
                        color: Color(0xFF858585),
                        height: 1.6,
                      ),
                      children: [
                        TextSpan(
                          text: 'By continuing you agree to our ',
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: Color(0xFF58B878),
                          ),
                        ),
                        TextSpan(
                          text: '\nand ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Color(0xFF58B878),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF58B878),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Sing Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  // Already have an account
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF171724),
                        ),
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Singup',
                            style: TextStyle(
                              color: Color(0xFF58B878),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}