import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool? icon;
  const GradientButton(
      {super.key, required this.text, required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(99)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF95ADFE).withOpacity(0.3),
            blurRadius: 22,
            spreadRadius: 0,
            offset: const Offset(0, 10),
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xFF9DCEFF),
            Color(0xFF92A3FD),
          ],
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SvgPicture.asset(
                  height: 24,
                  width: 24,
                  SvgPath.loginIcon,
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: popinsText(
                  text: text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
