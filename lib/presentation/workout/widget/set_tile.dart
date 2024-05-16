import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class SetTile extends StatelessWidget {
  final String path;
  final String title;
  final String subtitle;
  const SetTile(
      {super.key,
      required this.path,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Image.asset(path),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              popinsText(
                text: title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1D1617),
                ),
              ),
              const SizedBox(height: 5),
              popinsText(
                text: subtitle,
                style: const TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFADA4A5)),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Color(0xFFADA4A5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
