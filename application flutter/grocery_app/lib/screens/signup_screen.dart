

import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 25),

              Center(
                child: Image.asset(
                  'assets/images/carrot.png',
                  width: 55,
                  height: 65,
                ),
              ),

              const SizedBox(height: 75),

              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Afsar Hossen Shuvo',
                  border: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'imshuvo97@gmail.com',
                  suffixIcon: Icon(
                    Icons.check,
                    color: Color(0xFF58B77A),
                  ),
                  border: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                  border: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    height: 1.6,
                  ),
                  children: [
                    TextSpan(
                      text: 'By continuing you agree to our ',
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Color(0xFF58B77A),
                      ),
                    ),
                    TextSpan(
                      text: '\nand ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(
                        color: Color(0xFF58B77A),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF58B77A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 0,
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

              const SizedBox(height: 25),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF58B77A),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}