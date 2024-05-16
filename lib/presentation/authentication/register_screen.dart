import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymwala/presentation/authentication/login_screen.dart';
import 'package:gymwala/presentation/authentication/widgets/social_auth_widget.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/gradient_button.dart';
import 'package:gymwala/presentation/common/widgets/shared_textfield.dart';
import 'package:gymwala/presentation/dashboard/dashboard_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAccepted = false;
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
                text: 'Create an account',
                style: const TextStyle(
                  color: Color(0xFF1D1617),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              const SharedTextField(
                hintText: 'First Name',
                icon: CupertinoIcons.person,
              ),
              const SizedBox(height: 15),
              const SharedTextField(
                hintText: 'Last Name',
                icon: CupertinoIcons.person,
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Checkbox.adaptive(
                    value: isAccepted,
                    onChanged: (value) {
                      setState(() {
                        isAccepted = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'By continuing you accept our ',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFFADA4A5),
                        ),
                        children: const [
                          TextSpan(
                            text: 'Privacy Policy',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'Term of Use',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GradientButton(
                text: 'Register',
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
              ),
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
                    text: 'Already have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    child: popinsText(
                      text: 'Login',
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
