import 'package:flutter/material.dart';
import 'package:login_page/widgets/gradiant_button.dart';
import 'package:login_page/widgets/login_field.dart';
import 'package:login_page/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'), 
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
              ),
              const SizedBox(height: 60,),
              const SocialButton(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google'),
              const SizedBox(height: 25,),
              const SocialButton(iconPath: 'assets/svgs/f_logo.svg', label: 'Continue with FaceBook', horizontalPadding: 30,),
              const SizedBox(height: 5,),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              const LoginField(hintText: 'Email',),
              const SizedBox(height: 20),
              const LoginField(hintText: 'Password',),
              const SizedBox(height: 25),
              const GradiantButton(),
            ],
          ),
        ),
      ),
    );
  }
}