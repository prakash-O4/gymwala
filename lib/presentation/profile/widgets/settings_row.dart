import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class SettingsRowWidget extends StatelessWidget {
  final String data;
  final String path;
  const SettingsRowWidget({super.key, required this.data, required this.path});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(path),
        const SizedBox(width: 10),
        popinsText(
          text: data,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF7B6F72),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Color(0xFF7B6F72),
        ),
      ],
    );
  }
}
