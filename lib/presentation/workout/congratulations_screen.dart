import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/gradient_button.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                SvgPicture.asset(SvgPath.congratulations),
                const SizedBox(height: 20),
                popinsText(
                  text: "Congratulations, You Have Finished Your Workout",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1D1617)),
                  align: TextAlign.center,
                ),
                const SizedBox(height: 30),
                popinsText(
                  text:
                      "Exercises is king and nutrition is queen. Combine the two and you will have a kingdom\n\n -Jack Lalane",
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFF7B6F72)),
                  align: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: GradientButton(
          text: 'Back to home',
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
    );
  }
}
