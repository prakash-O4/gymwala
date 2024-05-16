import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class NeedingTile extends StatelessWidget {
  final String path;
  final String title;
  const NeedingTile({super.key, required this.path, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 130,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Color(0xFFF7F8F8),
          ),
          // padding: const EdgeInsets.all(40),
          child: Center(child: SvgPicture.asset(path)),
        ),
        const SizedBox(height: 5),
        popinsText(text: title)
      ],
    );
  }
}
