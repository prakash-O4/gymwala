import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class SleepWidget extends StatelessWidget {
  const SleepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1D242A).withOpacity(0.05),
            blurRadius: 40,
            spreadRadius: 0,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          popinsText(
            text: "Sleep",
            style: const TextStyle(
              color: Color(0xFF1D242A),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 4),
          popinsText(
            text: "8h 20m",
            style: const TextStyle(
              color: Color(0xFF92A3FD),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          SvgPicture.asset(
            SvgPath.sleepPath,
            height: 70,
            width: 80,
          ),
        ],
      ),
    );
  }
}
