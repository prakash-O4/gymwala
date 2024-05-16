import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class BodyDetailWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const BodyDetailWidget(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1D1617).withOpacity(0.07),
            offset: const Offset(0, 10),
            blurRadius: 40,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            popinsText(
              text: title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
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
            const SizedBox(height: 6),
            popinsText(
              text: subtitle,
              style: const TextStyle(fontSize: 12, color: Color(0xFF7B6F72)),
            )
          ],
        ),
      ),
    );
  }
}
