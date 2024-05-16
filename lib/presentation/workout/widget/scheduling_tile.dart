import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class SchedulingTile extends StatelessWidget {
  final List<Color> color;
  final String path;
  final String title;
  final String time;
  const SchedulingTile(
      {super.key,
      required this.color,
      required this.path,
      required this.title,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        gradient: LinearGradient(
          colors: color,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(path),
          const SizedBox(width: 10),
          popinsText(
            text: title,
            style: const TextStyle(
              color: Color(0xFF7B6F72),
              fontSize: 14,
            ),
          ),
          const Spacer(),
          popinsText(
            text: time,
            style: const TextStyle(
              color: Color(0xFF7B6F72),
              fontSize: 13,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Color(0xFF7B6F72),
          )
        ],
      ),
    );
  }
}
