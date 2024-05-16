import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/authentication/register_screen.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff92A3FD), Color(0xff9DCEFF)],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              SvgPath.appIcon,
              height: 35,
              width: 165,
            ),
            const SizedBox(height: 5),
            popinsText(
              text: 'Your fitness pal',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              align: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(99),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const RegisterScreen();
                  },
                ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: popinsText(
                    text: 'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff92A3FD), Color(0xff9DCEFF)],
                        ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                        ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
