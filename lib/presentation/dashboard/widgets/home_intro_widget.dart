import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class HomeIntroWidget extends StatelessWidget {
  const HomeIntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            popinsText(
              text: "Welcome Back,",
              style: const TextStyle(
                color: Color(0xFFADA4A5),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            popinsText(
              text: "Sandhya Khadka",
              style: const TextStyle(
                color: Color(0xFF1D1617),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF7F8F8),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.all(11),
          child: SvgPicture.asset(
            SvgPath.notificationIcon,
          ),
        )
      ],
    );
  }
}
