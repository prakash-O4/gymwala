import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class CalorieTile extends StatelessWidget {
  const CalorieTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.3,
                child: SvgPicture.asset(SvgPath.fire),
              ),
              const SizedBox(width: 10),
              popinsText(
                text: "450 Calories Burn",
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFADA4A5),
                ),
              ),
              const SizedBox(width: 6),
              popinsText(
                  text: "29",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFADA4A5),
                  )),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFDDDADA),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              SvgPicture.asset(SvgPath.fire),
              const SizedBox(width: 10),
              popinsText(
                text: "450 Calories Burn",
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFADA4A5),
                ),
              ),
              const SizedBox(width: 6),
              popinsText(
                text: "30",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF7B6F72),
                ),
              ),
              const SizedBox(width: 6),
              popinsText(
                text: "times",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFADA4A5),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFDDDADA),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.3,
                child: SvgPicture.asset(SvgPath.fire),
              ),
              const SizedBox(width: 10),
              popinsText(
                text: "450 Calories Burn",
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFADA4A5),
                ),
              ),
              const SizedBox(width: 6),
              popinsText(
                  text: "31",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFADA4A5),
                  )),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFDDDADA),
        ),
      ],
    );
  }
}
