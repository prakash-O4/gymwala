import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymwala/presentation/authentication/register_screen.dart';
import 'package:gymwala/presentation/authentication/widgets/social_auth_widget.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/gradient_button.dart';
import 'package:gymwala/presentation/common/widgets/shared_textfield.dart';
import 'package:gymwala/presentation/dashboard/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              popinsText(
                text: 'Hey there,',
                style: const TextStyle(
                  color: Color(0xFF1D1617),
                  fontSize: 16,
                ),
              ),
              popinsText(
                text: 'Welcome Back',
                style: const TextStyle(
                  color: Color(0xFF1D1617),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              const SharedTextField(
                hintText: 'Email',
                icon: CupertinoIcons.mail,
              ),
              const SizedBox(height: 15),
              const SharedTextField(
                hintText: 'Password',
                icon: Icons.lock_outline,
                isPassword: true,
              ),
              TextButton(
                onPressed: () {},
                child: popinsText(
                  text: 'Forgot your Password?',
                  align: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFADA4A5),
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Spacer(),
              GradientButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DashboardScreen();
                        },
                      ),
                      (route) => route.isCurrent,
                    );
                  },
                  icon: true),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFDDDADA),
                    ),
                  ),
                  const SizedBox(width: 5),
                  popinsText(
                    text: 'Or',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1D1617),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFDDDADA),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const SocialAuthWidget(),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  popinsText(
                    text: "Didn't have an account yet?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: popinsText(
                      text: 'Register',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFCA8EEE),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
